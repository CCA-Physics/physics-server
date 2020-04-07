SET PYTHON_DIR="C:\Users\PExIT\.pyenv\pyenv-win\versions\3.7.5-amd64"

cd %PYTHON_DIR%
SET PATH="%PYTHON_DIR%";"%PYTHON_DIR%\Scripts";%PATH%

voila "C:\Users\PExIT\git\pymedphys\examples\site-specific\cancer-care-associates\voila\Compare Monaco and iCOM.ipynb" --no-browser --base_url=/delivery/ --port=38894 --debug
