SET PYTHON_DIR="C:\Users\Public\Documents\python"
cd %PYTHON_DIR%
SET PATH=%PYTHON_DIR%;%PYTHON_DIR%\Scripts;"%PATH%"

pymedphys icom listen 192.168.17.40 \\NBCCC-pdc\physics\NBCC-DataExchange\iCom
