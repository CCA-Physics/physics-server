SET PYTHON_DIR="C:\Users\PExIT\AppData\Local\pypoetry\Cache\virtualenvs\pymedphys-q3DRi5lT-py3.8"
cd %PYTHON_DIR%
SET PATH=%PYTHON_DIR%;%PYTHON_DIR%\Scripts

pymedphys icom listen 192.168.100.200 D:\iComLogFiles
