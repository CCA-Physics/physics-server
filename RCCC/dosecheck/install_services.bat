SET PATH=C:\Users\Public\Documents\physics-server\bin

SET HERE=C:\Users\Public\Documents\physics-server\RCCC\dosecheck
SET NAME=dosecheck_port_forward

nssm install %NAME% %NAME%.bat

nssm set %NAME% Application %HERE%\%NAME%.bat
nssm set %NAME% AppDirectory %HERE%

nssm set %NAME% AppStdout %HERE%\%NAME%_log.txt
nssm set %NAME% AppStderr %HERE%\%NAME%_log.txt
nssm set %NAME% AppRestartDelay 1000

PAUSE