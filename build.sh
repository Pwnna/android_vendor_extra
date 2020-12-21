#!/bin/bash

cd vendor/extra
docker-compose exec main /opt/scripts/build-in-docker.sh
