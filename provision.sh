
#!/bin/bash

# Update system
yum update -y

# Install basic tools
yum install -y vim
yum install -y git
yum install -y wget
yum install -y epel-release

# Set timezone
timedatectl set-timezone UTC

# Configure firewall
systemctl start firewalld
systemctl enable firewalld

# Create a test user
useradd testuser

# Add some custom configurations
echo "alias ll='ls -la'" >> /etc/profile.d/custom.sh

# Print completion message
echo "Provisioning completed successfully!"