SB_ID="${1:-0}" # Default to sb_id=0
logfile="$PWD/output/fc-sb${SB_ID}-log"
metricsfile="$PWD/output/fc-sb${SB_ID}-metrics"

curl --unix-socket /tmp/firecracker.socket -i \
    -X PUT "http://localhost/logger" \
    -H "accept: application/json" \
    -H "Content-Type: application/json" \
    -d "{
             \"log_path\": \"$logfile\",
	     \"level\": \"Info\",
	     \"show_level\": true,
	     \"show_log_origin\": true
 
     }"
