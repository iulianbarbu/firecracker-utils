curl -d @big_mmds_payload.txt --unix-socket /tmp/firecracker.socket -i \
    -X PUT "http://localhost/mmds"
    
