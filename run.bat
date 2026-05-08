@echo off
setlocal

docker compose pull
if errorlevel 1 exit /b %errorlevel%

docker compose up --no-build TEMPLATE_SERVICE_NAME
