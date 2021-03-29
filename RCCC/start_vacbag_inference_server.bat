SET PYMEDPHYS_ROOT="D:\Matt Cooper's VacuNet\pymedphys"
SET PYTHON_DIR="%PYMEDPHYS_ROOT%\env"
SET PATH="%PYTHON_DIR%";"%PYTHON_DIR%\Scripts";%PATH%

D:
cd "%PYMEDPHYS_ROOT%\protyping\auto-segmentation"

python -m storage_and_inference_scp

PAUSE