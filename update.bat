@echo off
setlocal

git pull
if errorlevel 1 exit /b %errorlevel%

docker compose pull
