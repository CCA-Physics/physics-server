SET PATH="C:\Users\Public\Documents\physics-server\bin";%PATH%

nssm install voila_servers voila_servers.bat

nssm set voila_servers Application C:\Users\Public\Documents\physics-server\RCCC\voila\voila_servers.bat
nssm set voila_servers AppDirectory C:\Users\Public\Documents\physics-server\RCCC\voila

nssm set voila_servers AppStdout C:\Users\Public\Documents\physics-server\RCCC\voila\voila-log.txt
nssm set voila_servers AppStderr C:\Users\Public\Documents\physics-server\RCCC\voila\voila-log.txt

nssm set voila_servers AppRestartDelay 300000

PAUSE