#!/bin/bash

set -e

pushd vendor/extra/patches
for f in $(find . -type f); do
  d=$(dirname $f)
  pushd ../../../$d
  git reset --hard HEAD
  git apply ../../../vendor/extra/patches/$f
  git status
  popd
done
popd
