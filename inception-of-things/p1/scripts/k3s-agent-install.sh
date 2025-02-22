#!/bin/bash

# Wait for server token to be available
while [ ! -f /vagrant/node-token ]; do
    sleep 1
done

# Get server token
NODE_TOKEN=$(cat /vagrant/node-token)

# Install K3s agent
export INSTALL_K3S_EXEC="--flannel-iface=eth1"
export K3S_URL="https://192.168.56.110:6443"
export K3S_TOKEN=$NODE_TOKEN

# Install K3s with above configuration
curl -sfL https://get.k3s.io | sh -