SET PATH="C:\Users\Public\Documents\physics-server\bin";%PATH%

nssm install tunnels tunnels.bat

nssm set tunnels Application C:\Users\Public\Documents\physics-server\SASH\tunnel\tunnels.bat
nssm set tunnels AppDirectory C:\Users\Public\Documents\physics-server\SASH\tunnel

nssm set tunnels AppStdout C:\Users\Public\Documents\physics-server\SASH\tunnel\tunnels_log.txt
nssm set tunnels AppStderr C:\Users\Public\Documents\physics-server\SASH\tunnel\tunnels_log.txt

nssm set tunnels AppRestartDelay 60000

PAUSE