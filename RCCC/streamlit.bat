C:
SET PYTHON_DIR="C:\Users\PExIT\.pyenv\pyenv-win\versions\3.7.5-amd64"
SET PATH="C:\Users\PExIT\.poetry\bin";"%PYTHON_DIR%";"%PYTHON_DIR%\Scripts";"C:\Program Files\ImageMagick-7.0.9-Q16";"%PATH%"

cd C:\Users\PExIT\git\pymedphys
poetry run pymedphys gui
