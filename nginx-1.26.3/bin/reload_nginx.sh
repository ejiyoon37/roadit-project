
cd "$(dirname "$0")"


if ! pgrep nginx > /dev/null; then
    echo "❌ nginx가 실행 중이지 않습니다."
    exit 1
fi


./nginx -t -c ../conf/nginx.conf > /dev/null
if [ $? -ne 0 ]; then
    echo "❌ 설정 오류가 있어 reload 할 수 없습니다."
    exit 1
fi

# reload
./nginx -s reload -c ../conf/nginx.conf
echo "✅ 설정이 성공적으로 반영되었습니다!"
