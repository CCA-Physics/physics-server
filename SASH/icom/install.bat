SET PYTHON_DIR="C:\Users\Administrator\Anaconda3"
cd %PYTHON_DIR%
SET PATH="%PYTHON_DIR%";"%PYTHON_DIR%\Scripts";%PATH%

pip install pymedphys==0.28.0 --no-deps

PAUSE