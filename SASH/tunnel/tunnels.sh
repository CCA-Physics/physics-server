ssh -N -o ServerAliveInterval=248 pexit@165.228.124.29 -p 38471 \
  `# Forwarding from RCCC to SASH` \
  -L 0.0.0.0:80:localhost:80 `# http://physics-server/, http://dosecheck.physics-server/, and http://dicom.physics-server/` \
  -L 0.0.0.0:34242:localhost:34242 `# orthanc-bounce DICOM receiver` \
  -L 0.0.0.0:4242:localhost:4242 `# orthanc-physics DICOM receiver` \
  -L 0.0.0.0:34567:localhost:34567 `# Mathew Cooper's Vacbag DICOM receiver` \
  `# Forwarding from SASH to RCCC` \
  -R 0.0.0.0:1433:sash-mosaiq:1433 `# SASH Mosaiq SQL` \
  -R 0.0.0.0:44445:192.168.40.10:445 `# SAMBA \\tunnel-sash-9002` \
  -R 0.0.0.0:44447:localhost:445 `# SAMBA \\tunnel-sash-physics-server` \
  -R 0.0.0.0:44449:elektatps:445 `# SAMBA \\tunnel-sash-monaco` \
  -R 0.0.0.0:34104:elektatps:104 `# Monaco's DICOM receiver` \
  -R 0.0.0.0:43104:192.168.40.10:104 `# 9002 service mode DICOM receiver`
