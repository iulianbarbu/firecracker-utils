curl --unix-socket /tmp/firecracker.socket -i \
    -X GET "http://localhost/mmds/latest" \
    -H "accept: application/json"
