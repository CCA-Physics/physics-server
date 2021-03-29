SET PYMEDPHYS_DIR=C:\Users\PExIT\git\pymedphys
SET TRF_DIR=D:\LinacTRFBackup
SET LOG=%TRF_DIR%\running-log.txt

C:
cd %PYMEDPHYS_DIR%
echo %DATE% %TIME% >> %LOG%
poetry run pymedphys trf orchestrate >> %LOG% 2>&1

NET USE W: \\utilsvr\PhysBack
xcopy D:\LinacTRFBackup W:\LinacTRFBackup /E /G /H /D /Y
echo %DATE% %TIME% >> %LOG%