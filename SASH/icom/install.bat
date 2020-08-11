SET PYTHON_DIR="C:\Users\Administrator\Anaconda3"
cd %PYTHON_DIR%
SET PATH="%PYTHON_DIR%";"%PYTHON_DIR%\Scripts";%PATH%

pip install numpy
pip install pymedphys==0.31.0dev2 --no-deps

PAUSE