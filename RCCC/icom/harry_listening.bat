SET PYTHON_DIR="C:\Users\Public\Documents\python"
cd %PYTHON_DIR%
SET PATH=%PYTHON_DIR%;%PYTHON_DIR%\Scripts

pymedphys icom listen 192.168.100.201 \\rccc-pdc\PExIT\DataExchange\iCom
