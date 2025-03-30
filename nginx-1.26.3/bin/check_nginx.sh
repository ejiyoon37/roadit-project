
cd "$(dirname "$0")"

echo "🔍 nginx 상태 확인 중..."

if pgrep nginx > /dev/null; then
    echo "✅ nginx는 현재 실행 중입니다!"
else
    echo "❌ nginx는 꺼져 있습니다."
fi
