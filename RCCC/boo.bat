FOR /F "tokens=*" %g IN ('python -c "import keyring; print(keyring.get_password('ssh server', 'pexit'))"') do (SET PASSWORD=%g)
SET COMMAND= "echo %PASSWORD% | sudo -S service ssh start"

bash -c %COMMAND%