#!/bin/bash

HOST_UID=$(stat -c '%u' /srv/android)
HOST_GID=$(stat -c '%g' /srv/android)
USERNAME=builder

uid=$(getent passwd $USERNAME | cut -d ":" -f 3)
gid=$(getent passwd $USERNAME | cut -d ":" -f 4)

if [ "$gid" == "" ]; then
  echo "Adding group with gid = $HOST_GID"
  addgroup --gid $HOST_GID $USERNAME
elif [ "$gid" != "$HOST_GID" ]; then
  echo "Deleting previous group with $gid as it doesn't match host's $HOST_GID"
  delgroup $USERNAME
  addgroup --gid $HOST_GID $USERNAME
fi

if [ "$uid" == "" ]; then
  echo "Adding user with uid = $HOST_GID"
  adduser --gecos "" --disabled-password --uid $HOST_UID --gid $HOST_GID $USERNAME
elif [ "$uid" != "$HOST_UID" ]; then
  echo "Deleting previous user with $uid as it doesn't match host's $HOST_UID"
  deluser $USERNAME
  adduser --gecos "" --disabled-password --uid $HOST_UID --gid $HOST_GID $USERNAME
fi

chown $USERNAME:$USERNAME /home/$USERNAME
