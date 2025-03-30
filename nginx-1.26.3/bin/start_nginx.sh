cd "$(dirname "$0")"

if pgrep nginx > /dev/null; then
    echo "⚠️ nginx가 이미 실행 중입니다. 먼저 종료하세요."
    exit 1
fi

mkdir -p ../logs
mkdir -p temp/client_body_temp temp/proxy_temp temp/fastcgi_temp temp/scgi_temp temp/uwsgi_temp

./nginx -c ../conf/nginx.conf
echo "✅ nginx 실행 완료!"
