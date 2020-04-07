SET PATH="C:\Users\Public\Documents\physics-server\bin";%PATH%

nssm install icom_listening_9002 9002_listening.bat

nssm set icom_listening_9002 Application C:\Users\Public\Documents\physics-server\SASH\icom\9002_listening.bat
nssm set icom_listening_9002 AppDirectory C:\Users\Public\Documents\physics-server\SASH\icom

nssm set icom_listening_9002 AppStdout C:\Users\Public\Documents\physics-server\SASH\icom\9002_listening_log.txt
nssm set icom_listening_9002 AppStderr C:\Users\Public\Documents\physics-server\SASH\icom\9002_listening_log.txt

nssm set icom_listening_9002 AppRestartDelay 300000

PAUSE