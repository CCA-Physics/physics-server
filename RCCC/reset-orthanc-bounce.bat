timeout /t 60
start cmd /C "cd C:\Users\Public\Documents\physics-server\RCCC\docker\orthanc-bounce && docker-compose down && docker-compose up -d && PAUSE"