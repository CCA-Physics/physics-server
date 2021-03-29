SET GIT_ROOT=C:\Users\Public\Documents\physics-server
SET PATH=%GIT_ROOT%\bin;%PATH%
SET HERE=%GIT_ROOT%\NBCC\icom


SET SERIAL=4299

nssm install icom_listening_%SERIAL% %SERIAL%_listening.bat

nssm set icom_listening_%SERIAL% Application %HERE%\%SERIAL%_listening.bat
nssm set icom_listening_%SERIAL% AppDirectory %HERE%

nssm set icom_listening_%SERIAL% AppStdout %HERE%\%SERIAL%_listening_log.txt
nssm set icom_listening_%SERIAL% AppStderr %HERE%\%SERIAL%_listening_log.txt

nssm set icom_listening_%SERIAL% AppRestartDelay 300000


SET SERIAL=9183

nssm install icom_listening_%SERIAL% %SERIAL%_listening.bat

nssm set icom_listening_%SERIAL% Application %HERE%\%SERIAL%_listening.bat
nssm set icom_listening_%SERIAL% AppDirectory %HERE%

nssm set icom_listening_%SERIAL% AppStdout %HERE%\%SERIAL%_listening_log.txt
nssm set icom_listening_%SERIAL% AppStderr %HERE%\%SERIAL%_listening_log.txt

nssm set icom_listening_%SERIAL% AppRestartDelay 300000

PAUSE