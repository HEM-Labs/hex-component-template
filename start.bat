@echo off
setlocal

set "TEMPLATE_RESTART=unless-stopped"

docker compose pull
if errorlevel 1 exit /b %errorlevel%

docker compose up -d --no-build TEMPLATE_SERVICE_NAME
