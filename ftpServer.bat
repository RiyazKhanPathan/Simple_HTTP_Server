@echo off

for /F "tokens=14" %%i in ('"ipconfig | findstr IPv4"') do SET LOCAL_IP=%%i


set /p UserInputPath=Path of file to share?


cd /d %UserInputPath%\ 
cls

echo URL : http://%LOCAL_IP%:8181

python -m http.server 8181


