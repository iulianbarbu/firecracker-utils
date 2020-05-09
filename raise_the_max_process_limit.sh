sudo tee -a >> /etc/security/limits.conf <<EOL
iul soft nproc 16384
iul hard nproc 16384
EOL
