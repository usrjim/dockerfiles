#!/usr/bin/env bash

apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
echo "deb https://get.docker.io/ubuntu docker main" > /etc/apt/sources.list.d/docker.list
apt-get update
apt-get install -y lxc-docker vim wget curl telnet golang samba

# -----
# samba
# -----
SHARED=$(cat <<EOF
[docker]
comment = Docker
path = /opt
browsable = yes
guest ok = yes
read only = no
create mask = 0777
force user = vagrant
force group = vagrant
EOF
)
echo "${SHARED}" >> /etc/samba/smb.conf
chown vagrant:vagrant /opt
service smbd restart
