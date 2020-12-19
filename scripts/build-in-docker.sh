#!/bin/bash

HOST_UID=$(stat -c '%u' /srv/android)
HOST_GID=$(stat -c '%g' /srv/android)
USERNAME=builder

set -x

addgroup --gid $HOST_GID $USERNAME
adduser --gecos "" --disabled-password --uid $HOST_UID --gid $HOST_GID $USERNAME

sudo -u $USERNAME /opt/scripts/actually-build-in-docker.sh "$@"
