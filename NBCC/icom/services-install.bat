SET PATH="C:\Users\Public\Documents\physics-server\bin";%PATH%

nssm install icom_listening_4299 4299_listening.bat

nssm set icom_listening_4299 Application C:\Users\Public\Documents\physics-server\NBCC\icom\4299_listening.bat
nssm set icom_listening_4299 AppDirectory C:\Users\Public\Documents\physics-server\NBCC\icom

nssm set icom_listening_4299 AppStdout C:\Users\Public\Documents\physics-server\NBCC\icom\4299_listening_log.txt
nssm set icom_listening_4299 AppStderr C:\Users\Public\Documents\physics-server\NBCC\icom\4299_listening_log.txt

nssm set icom_listening_4299 AppRestartDelay 300000

PAUSE