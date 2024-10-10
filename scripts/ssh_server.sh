#!/bin/bash

# Prompt for password
echo "Enter the password you want to set for the current user:"
read -s user_password

# Install OpenSSH
pkg install -y openssh

# Set the password for the current user
echo -e "$user_password\n$user_password" | passwd

# Get the current user ID
user_id=$(whoami)

# Find the IP address
ip_address=$(ifconfig | grep 'inet 192' | awk '{print $2}')

# Start the SSH server
sshd

# Configure the SSH server
config_file="/data/data/com.termux/files/usr/etc/ssh/sshd_config"
if ! grep -q "Port 8022" "$config_file"; then
  echo "Port 8022" >> "$config_file"
fi
if ! grep -q "ListenAddress 0.0.0.0" "$config_file"; then
  echo "ListenAddress 0.0.0.0" >> "$config_file"
fi

# Restart SSH server to apply changes
pkill sshd
sshd

# Display final command to connect
echo "To connect via SSH, use the following command:"
echo "ssh -p 8022 ${user_id}@${ip_address}"
