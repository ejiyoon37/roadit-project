@echo off
chcp 65001 >nul
cd /d "%~dp0"

echo 🔄 nginx 설정 다시 불러오는 중...

tasklist | findstr /I "nginx.exe" >nul 2>&1
if errorlevel 1 (
    echo ⚠ nginx가 실행 중이지 않습니다. 먼저 실행하세요.
    pause
    exit /b
)

nginx.exe -t -c ../conf/nginx.conf >nul 2>&1
if errorlevel 1 (
    echo ❌ 설정 파일에 오류가 있어 reload할 수 없습니다.
    pause
    exit /b
)

nginx.exe -s reload -c ../conf/nginx.conf
echo ✅ 설정이 성공적으로 반영되었습니다.
pause
