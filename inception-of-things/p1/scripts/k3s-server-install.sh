#!/bin/bash

# Install K3s server (controller)
export INSTALL_K3S_EXEC="--bind-address=192.168.56.110 --node-external-ip=192.168.56.110 --flannel-iface=eth1"

# Install K3s with above configuration
curl -sfL https://get.k3s.io | sh -

# Wait for K3s to be ready
sleep 20

# Get node token and save it to shared folder
sudo cat /var/lib/rancher/k3s/server/node-token > /vagrant/node-token