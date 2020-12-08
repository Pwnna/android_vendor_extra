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
      wget \
      xsltproc \
      zip \
      zlib1g-dev \
    ; \
    wget -O /usr/local/bin/repo https://storage.googleapis.com/git-repo-downloads/repo; \
    chmod +x /usr/local/bin/repo;

