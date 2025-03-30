@echo off
chcp 65001 >nul

cd /d "%~dp0"

echo 🔎 nginx 정상 종료 시도 중...
nginx.exe -s quit -c ../conf/nginx.conf

ping 127.0.0.1 -n 2 >nul

tasklist | findstr /I "nginx.exe" >nul 2>&1
if not errorlevel 1 (
    echo ⚠ 정상 종료 실패 → 강제 종료 시도
    taskkill /F /IM nginx.exe >nul 2>&1
    echo ✅ nginx 강제 종료 완료!
) else (
    echo ✅ nginx 정상 종료 완료!
)

pause
