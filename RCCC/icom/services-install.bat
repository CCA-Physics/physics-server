SET PATH="C:\Users\Public\Documents\physics-server\bin";%PATH%

nssm install icom_listening_harry harry_listening.bat
nssm install icom_listening_peter peter_listening.bat


nssm set icom_listening_harry Application C:\Users\Public\Documents\physics-server\RCCC\icom\harry_listening.bat
nssm set icom_listening_harry AppDirectory C:\Users\Public\Documents\physics-server\RCCC\icom

nssm set icom_listening_peter Application C:\Users\Public\Documents\physics-server\RCCC\icom\peter_listening.bat
nssm set icom_listening_peter AppDirectory C:\Users\Public\Documents\physics-server\RCCC\icom


nssm set icom_listening_harry AppStdout C:\Users\Public\Documents\physics-server\RCCC\icom\harry_listening_log.txt
nssm set icom_listening_harry AppStdout C:\Users\Public\Documents\physics-server\RCCC\icom\harry_listening_log.txt

nssm set icom_listening_peter AppStdout C:\Users\Public\Documents\physics-server\RCCC\icom\peter_listening_log.txt
nssm set icom_listening_peter AppStdout C:\Users\Public\Documents\physics-server\RCCC\icom\peter_listening_log.txt


nssm set icom_listening_harry AppRestartDelay 300000
nssm set icom_listening_peter AppRestartDelay 300000

PAUSE