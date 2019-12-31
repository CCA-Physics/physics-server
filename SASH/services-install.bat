nssm install tunnels tunnels.bat

nssm set tunnels Application C:\Users\Public\Documents\physics-server\tunnels.bat
nssm set tunnels AppDirectory C:\Users\Public\Documents\physics-server
nssm set tunnels AppStdout C:\Users\Public\Documents\physics-server\tunnels_log.txt
nssm set tunnels AppStderr C:\Users\Public\Documents\physics-server\tunnels_log.txt
nssm set tunnels AppRestartDelay 60000

PAUSE