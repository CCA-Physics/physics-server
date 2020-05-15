-- Based on https://bitbucket.org/osimis/orthanc-setup-samples/src/c05537f4c4b66dc622356b15c67d40a78fcb476c/docker/transcode-middleman/orthanc-middleman/transcodeAndForward.lua?at=master&fileviewer=file-view-default

function OnStoredInstance(instanceId, tags, metadata, origin)
    -- Do not compress twice the same file
    if origin['RequestOrigin'] ~= 'Lua' then
      -- Retrieve the incoming DICOM instance from Orthanc
      local dicom = RestApiGet('/instances/' .. instanceId .. '/file')
  
      -- Write the DICOM content to some temporary file
      local received_filepath = instanceId .. '-received.dcm'
      local intermediate_filepath_a = instanceId .. '-intermediate-a.dcm'
      local intermediate_filepath_b = instanceId .. '-intermediate-b.dcm'
      local converted_filepath = instanceId .. '-converted.dcm'
  
      local plan_UID = '1.2.840.10008.5.1.4.1.1.481.5'
      local structure_UID = '1.2.840.10008.5.1.4.1.1.481.3'
  
  
      print(tags['SOPClassUID'])
  
      if tags['SOPClassUID'] == structure_UID or tags['SOPClassUID'] == plan_UID then
        print('Saving a DICOM to file ' .. received_filepath)
        local target = assert(io.open(received_filepath, 'wb'))
        target:write(dicom)
        target:close()
  
        RestApiDelete('/instances/' .. instanceId)
      end
  
      if tags['SOPClassUID'] == structure_UID then
        print(' ')
        print('=============== STRUCTURE START ===================')
        print(' ')

        print('Converting a structure set')

        adjustment_string = 'pymedphys dicom adjust-RED -i ' .. received_filepath .. ' ' .. intermediate_filepath_a .. ' "Couch Edge" 1.1 "Couch Foam Half Couch" 0.06 "Couch Outer Half Couch" 0.5 "H&N Board" 0.2 "H&N Foam" 0.2 "BB Foam" 0.1 "BB Outer" 0.1 "BB Racket" 0.1'
        print(adjustment_string)
        os.execute(adjustment_string)

        adjust_by_name = 'pymedphys dicom adjust-RED-by-structure-name ' .. intermediate_filepath_a .. ' ' .. intermediate_filepath_b
        print(adjust_by_name)
        os.execute(adjust_by_name)

        merge_contours = 'pymedphys dicom merge-contours ' .. intermediate_filepath_b .. ' ' .. converted_filepath .. ' --structures patient'
        print(merge_contours)
        os.execute(merge_contours)
  
        os.remove(intermediate_filepath_a)
        os.remove(intermediate_filepath_b)

        print(' ')
        print('================ STRUCTURE END ====================')
        print(' ')
  
      elseif tags['SOPClassUID'] == plan_UID then
        print('Converting a plan')
        os.execute('pymedphys dicom adjust-machine-name ' .. received_filepath .. ' ' .. converted_filepath .. ' 2619')
  
      end
  
      if tags['SOPClassUID'] == structure_UID or tags['SOPClassUID'] == plan_UID then
        local source = assert(io.open(converted_filepath, 'rb'))
        local new_dicom = source:read("*all")
        source:close()
  
        RestApiPost('/instances', new_dicom)
  
        os.remove(received_filepath)
        os.remove(converted_filepath)
      end
  
      Delete(SendToModality(instanceId, 'DoseCHECK'))
    end
  end
  