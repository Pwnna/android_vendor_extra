#!/bin/bash

set -e
cd /srv/android

echo "source build/envsetup.sh"
source build/envsetup.sh

echo "+ breakfast $1"
breakfast $1

echo "+ time make -j$(nproc) bacon"
time make -j$(nproc) bacon
