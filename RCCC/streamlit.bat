C:
SET PYTHON_DIR="C:\Users\PExIT\.pyenv\pyenv-win\versions\3.7.5-amd64"
SET PATH="C:\Users\PExIT\.poetry\bin";"%PYTHON_DIR%";"%PYTHON_DIR%\Scripts";"%PATH%"

cd C:\Users\PExIT\git\pymedphys
poetry run streamlit run examples\site-specific\cancer-care-associates\streamlit\mudensity-compare.py --server.port=38894 --server.headless=True --server.baseUrlPath=/delivery/ --browser.serverAddress=physics-server --browser.serverPort=80
