#!/bin/bash -e

git clone https://github.com/sashaCher/conjur-quickstart.git
cd conjur-quickstart
yq d -i docker-compose.yml "services.client.volumes"    
yq w -i docker-compose.yml "services.client.volumes[+]" "../policies:/policies"
./start.sh