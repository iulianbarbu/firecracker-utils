curl --unix-socket /tmp/firecracker.socket -i \
    -X PUT "http://localhost/mmds/config" \
    -H "accept: application/json" \
    -H "Content-Type: application/json" \
    -d "{
             \"ipv4_address_pool\": [
			\"169.254.169.254\"
 
     }"
