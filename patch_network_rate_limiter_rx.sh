curl --unix-socket /tmp/firecracker.socket -i \
	-X PATCH "http://localhost/network-interfaces/1" \
	-H "Content-Type: application/json" \
	-H "Accept: application/json" \
	-d "{
    		\"iface_id\": \"1\",
    		\"rx_rate_limiter\": {
			\"bandwidth\": {
				\"size\": 5242880,
				\"refill_time\": 100
			}
    		}
	}"
