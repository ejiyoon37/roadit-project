
cd "$(dirname "$0")"

./nginx -s quit -c ../conf/nginx.conf
sleep 1

if pgrep nginx > /dev/null; then
    echo "⚠️ 종료 실패 → 강제 종료 시도"
    pkill -9 nginx
    echo "✅ nginx 강제 종료 완료!"
else
    echo "✅ nginx 정상 종료 완료!"
fi
