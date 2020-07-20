#!/bin/bash -e

cd conjur-quickstart
docker-compose down -v
cd ..
rm -rf conjur-quickstart