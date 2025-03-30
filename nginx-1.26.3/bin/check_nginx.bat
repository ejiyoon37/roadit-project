@echo off
chcp 65001 >nul
cd /d "%~dp0"

echo 🔍 nginx 실행 상태 확인 중...

tasklist | findstr /I "nginx.exe" >nul 2>&1

if errorlevel 1 (
    echo ❌ nginx는 현재 실행 중이 아닙니다.
) else (
    echo ✅ nginx는 현재 실행 중입니다!
)

pause
