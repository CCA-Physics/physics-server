SET PYTHON_DIR="C:\Users\Administrator\Anaconda3"
cd %PYTHON_DIR%
SET PATH="%PYTHON_DIR%";"%PYTHON_DIR%\Scripts";%PATH%

pip install numpy
pip install pymedphys==0.30.0dev0 --no-deps

PAUSE