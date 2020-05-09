curl --unix-socket /tmp/firecracker.socket -i \
    -X PUT "http://localhost/mmds"            \
    -H "Content-Type: application/json"       \
    -H "Content-Length: 14" \
    -d "{\"abc\":\"abc\"}"
