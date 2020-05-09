curl --unix-socket /tmp/firecracker.socket -i \
    -X PUT "http://localhost/mmds" \
    -H "accept: application/json" \
    -H "Content-Type: application/json" \
    -d "{
        \"latest\": {
            \"meta-data\": {
                \"ami-id\": \"ami-12345678\",
                \"reservation-id\": \"r-fea54097\",
                \"local-hostname\": \"ip-10-251-50-12.ec2.internal\",
                \"public-hostname\": \"ec2-203-0-113-25.compute-1.amazonaws.com\",
                \"network\": {
                    \"interfaces\": {
                        \"macs\": {
                            \"02:29:96:8f:6a:2d\": {
                                \"device-number\": \"13345342\",
                                \"local-hostname\": \"localhost\",
                                \"subnet-id\": \"subnet-be9b61d\"
                            }
                        }
                    }
                }
            }
        }
    }"
