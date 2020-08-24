SET PYTHON_DIR="C:\Users\Public\Documents\vacunet\pymedphys\env"
cd %PYTHON_DIR%
SET PATH="%PYTHON_DIR%";"%PYTHON_DIR%\Scripts";%PATH%

C:
cd C:\Users\Public\Documents\vacunet\pymedphys\protyping\auto-segmentation

python -m storage_and_inference_scp

PAUSE