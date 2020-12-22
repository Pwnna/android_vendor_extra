FROM ubuntu:focal

RUN set -xe; \
    export DEBIAN_FRONTEND=noninteractive; \
    apt-get update; \
    apt-get -y install \
      bc \
      bison \
      build-essential \
      ccache \
      curl \
      flex \
      g++-multilib \
      gcc-multilib \
      git \
      gnupg \
      gperf \
      imagemagick \
      lib32ncurses5-dev \
      lib32readline-dev \
      lib32z1-dev \
      liblz4-tool \
      libncurses5 \
      libncurses5-dev \
      libsdl1.2-dev \
      libssl-dev \
      libxml2 \
      libxml2-utils \
      lzop \
      openjdk-8-jdk \
      pngcrush \
      python \
      rsync \
      schedtool \
      squashfs-tools \
      sudo \
      wget \
      unzip \
      xsltproc \
      zip \
      zlib1g-dev \
    ; \
    wget -O /usr/local/bin/repo https://storage.googleapis.com/git-repo-downloads/repo; \
    wget -O /opt/platform-tools.zip https://dl.google.com/android/repository/platform-tools-latest-linux.zip; \
    cd /opt; \
    unzip platform-tools.zip; \
    rm platform-tools.zip; \
    chmod +x /usr/local/bin/repo;

COPY scripts /opt/scripts
COPY ./auto-cd.sh /etc/profile.d/auto-cd.sh

WORKDIR /srv/android
