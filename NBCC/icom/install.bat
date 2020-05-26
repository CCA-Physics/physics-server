SET PYTHON_DIR="C:\Users\Public\Documents\python"
cd %PYTHON_DIR%
SET PATH=%PYTHON_DIR%;%PYTHON_DIR%\Scripts;"%PATH%"

pip install pymedphys==0.28.0 --no-deps

PAUSE