cd /srv/android

export PATH=$PATH:/opt/platform-tools

export USE_CCACHE=1
export CCACHE_SIZE=50G
export CCACHE_EXEC=/usr/bin/ccache
export CCACHE_DIR=/srv/ccache
ccache -M $CCACHE_SIZE

source build/envsetup.sh
