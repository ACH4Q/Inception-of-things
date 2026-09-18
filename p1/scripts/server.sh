#!/bin/bash
set -e

sudo apt-get update -y && sudo apt-get install curl -y
curl -sfL https://k3s.io | sh -
sudo cp /var/lib/rancher/k3s/server/node-token /vagrant/node-token
sudo chmod 644 /vagrant/node-token
