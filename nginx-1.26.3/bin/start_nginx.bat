@echo off
chcp 65001 >nul

cd /d "%~dp0"

tasklist | findstr /I "nginx.exe" >nul 2>&1
if not errorlevel 1 (
    echo ⚠ 이미 nginx가 실행 중입니다. 종료하고 다시 실행하세요.
    pause
    exit /b
)

if not exist ..\logs mkdir ..\logs
if not exist temp\client_body_temp mkdir temp\client_body_temp
if not exist temp\proxy_temp mkdir temp\proxy_temp
if not exist temp\fastcgi_temp mkdir temp\fastcgi_temp
if not exist temp\scgi_temp mkdir temp\scgi_temp
if not exist temp\uwsgi_temp mkdir temp\uwsgi_temp

start "" nginx.exe -c ../conf/nginx.conf

echo ✅ nginx 실행 완료!
pause
