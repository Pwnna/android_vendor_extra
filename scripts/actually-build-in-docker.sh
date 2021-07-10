#!/bin/bash

set -e
cd /srv/android

pushd vendor/extra/patches
for f in $(find . -type f); do
  d=$(dirname $f)
  pushd ../../../$d
  git reset --hard HEAD
  git apply ../../../vendor/extra/patches/$f
  git status
  popd
done

exit 1

echo "source build/envsetup.sh"
source build/envsetup.sh

echo "+ breakfast $1"
breakfast $1

echo "+ time make -j$(nproc) bacon"
time make -j$(nproc) bacon
