SET PYMEDPHYS_DIR=C:\Users\PExIT\git\pymedphys
SET TRF_DIR=D:\LinacTRFBackup

FOR /F "tokens=* USEBACKQ" %%F IN (`powershell -c "get-date -format yyyy-MM-dd--HH-mm-ss"`) DO (
    SET DATETIME=%%F
)
SET LOG=%TRF_DIR%\task-scheduler-logs\%DATETIME%.log.txt

C:
cd %PYMEDPHYS_DIR%
echo %DATE% %TIME% >> %LOG%
poetry run pymedphys trf orchestrate >> %LOG% 2>&1

NET USE W: \\utilsvr\PhysBack >> %LOG% 2>&1
xcopy D:\LinacTRFBackup W:\LinacTRFBackup /E /G /H /D /Y >> %LOG% 2>&1
echo %DATE% %TIME% >> %LOG%
