ssh -N -o ServerAliveInterval=241 pexit@165.228.124.29 -p 38471 \
  `# Forwarding from RCCC to NBCC` \
  -L 0.0.0.0:80:localhost:80 `# http://physics-server/, http://dosecheck.physics-server/, and http://dicom.physics-server/` \
  -L 0.0.0.0:30104:localhost:30104 `# DoseCHECK direct DICOM receiver` \
  -L 0.0.0.0:34242:localhost:34242 `# orthanc-bounce DICOM receiver` \
  -L 0.0.0.0:4242:localhost:4242 `# orthanc-physics DICOM receiver` \
  `# Forwarding from NBCC to RCCC` \
  -R 0.0.0.0:31433:nbccc-msq:1433 `# NBCC Mosaiq SQL` \
  -R 0.0.0.0:44448:nbccc-pdc:445 `# SAMBA \\tunnel-nbcc-pdc` \
  -R 0.0.0.0:44450:nbccc-monacoda:445 `# SAMBA \\tunnel-nbcc-monaco`\
  -R 0.0.0.0:44446:192.168.17.40:445 `# SAMBA \\tunnel-nbcc-4299` \
  -R 0.0.0.0:44451:192.168.17.42:445 `# SAMBA \\tunnel-nbcc-9183` \
  -R 0.0.0.0:35104:nbccc-monacoda:104 `# Monaco's DICOM receiver` \
  -R 0.0.0.0:44104:192.168.17.40:104 `# 4299 service mode DICOM receiver` \
  -R 0.0.0.0:45104:192.168.17.42:104 `# 9183 service mode DICOM receiver` \
