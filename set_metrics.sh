SB_ID="${1:-0}" # Default to sb_id=0
metricsfile="$PWD/output/fc-sb${SB_ID}-metrics"

curl --unix-socket /tmp/firecracker.socket -i \
    -X PUT "http://localhost/metrics" \
    -H "accept: application/json" \
    -H "Content-Type: application/json" \
    -d "{
             \"metrics_path\": \"$metricsfile\"
     }"
