#!/bin/bash

CORES=4
BRANCH=${BRANCH:-github/cm-14.1}
PATCH_NAME="android_frameworks_base-N.patch"

T=$ANDROID_BUILD_TOP
V=$ANDROID_BUILD_TOP/vendor/extra

KEYS_DIR=$V/keys

#################
# Sanity Checks #
#################

if [ -z "$T" ]; then
  echo "error: please run source build/envsetup.sh first" >&2
  exit 1
fi

if [ -z "$TARGET_PRODUCT" ]; then
  echo "error: please run breakfast <device> to select a device first" >&2
  exit 1
fi

# if [ ! -e $SIGN_KEY_PATH ]; then
#   echo "error: please generate a signing key first via vendor/extra/genkey.sh" >&2
#   exit 1
# fi

###########
# Helpers #
###########

pushd() {
  command pushd "$@" > /dev/null
}

popd() {
  command popd "$@" > /dev/null
}

log() {
  echo "[$(date "+%Y-%m-%d %H:%M:%S")] $@"
}

###############
# Build Start #
###############

cd $T
log "Applying signature spootfing patch to frameworks/base"
pushd frameworks/base
  git reset -q --hard $BRANCH
  patch --quiet -p1 -i $V/patches/$PATCH_NAME
  git clean -q -f # remove the .orig files created by patch
popd

time make -j${CORES} bacon
