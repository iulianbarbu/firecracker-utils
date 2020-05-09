#!/bin/bash


for i in {1..10000}
do
	curl --unix-socket /tmp/firecracker.socket -i \
    		-X GET "http://localhost/mmds/latest" \
    		-H "accept: application/json" &> /dev/null
done
