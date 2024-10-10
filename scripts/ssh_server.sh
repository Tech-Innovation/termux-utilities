#!/bin/bash

echo "Enter the password you want to set for the current user:"
read -s user_password

echo "Installing OpenSSH..."
pkg install -y openssh
echo "OpenSSH installed."

echo -e "$user_password\n$user_password" | passwd

user_id=$(whoami)
ip_address=$(ifconfig | grep 'inet 192' | awk '{print $2}')

sshd

config_file="/data/data/com.termux/files/usr/etc/ssh/sshd_config"
if ! grep -q "Port 8022" "$config_file"; then
  echo "Port 8022" >> "$config_file"
fi
if ! grep -q "ListenAddress 0.0.0.0" "$config_file"; then
  echo "ListenAddress 0.0.0.0" >> "$config_file"
fi

pkill sshd
sshd

echo "To connect via SSH, use the following command:"
echo "ssh -p 8022 ${user_id}@${ip_address}"
