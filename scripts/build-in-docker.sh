#!/bin/bash

source /opt/scripts/ensure-user.sh
sudo -u $USERNAME /opt/scripts/actually-build-in-docker.sh "$@"
