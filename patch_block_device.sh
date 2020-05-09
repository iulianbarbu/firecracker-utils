new_scratch=$PWD"/scratch.ext4_orig"
curl --unix-socket /tmp/firecracker.socket -i \
     -X PATCH "http://localhost/drives/scratch" \
     -H "accept: application/json" \
     -H "Content-Type: application/json" \
     -d "{
            \"drive_id\": \"scratch\",
            \"path_on_host\": \"${new_scratch}\"
         }"
