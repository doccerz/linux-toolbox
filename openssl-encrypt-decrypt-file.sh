openssl enc -aes-256-cbc -salt -in debug.log -out debug.enc -k "abcde"
openssl enc -aes-256-cbc -d -in debug.enc -out debug.log -k "abcde"