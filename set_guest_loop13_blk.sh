loop13_blk_path="/dev/loop13"
curl --unix-socket /tmp/firecracker.socket -i \
-X PUT 'http://localhost/drives/loop13' \
-H 'Accept: application/json'           \
-H 'Content-Type: application/json'     \
-d "{
  \"drive_id\": \"loop13\",
  \"path_on_host\": \"${loop13_blk_path}\",
  \"is_root_device\": false,
  \"is_read_only\": false
}"
