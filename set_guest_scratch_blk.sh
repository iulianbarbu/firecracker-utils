scratch_blk_path=$PWD"/scratch.ext4"
curl --unix-socket /tmp/firecracker.socket -i \
-X PUT 'http://localhost/drives/scratch' \
-H 'Accept: application/json'           \
-H 'Content-Type: application/json'     \
-d "{
  \"drive_id\": \"scratch\",
  \"path_on_host\": \"${scratch_blk_path}\",
  \"is_root_device\": false,
  \"is_read_only\": false
}"
