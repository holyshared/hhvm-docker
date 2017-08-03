FROM ubuntu:16.04
MAINTAINER Noritaka Horio <holy.shared.design@gmail.com>
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update && \
  apt-get install -y --no-install-recommends apt-utils software-properties-common && \
  rm -rf /var/lib/apt/lists/*
RUN apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0x5a16e7281be7a449
RUN add-apt-repository "deb http://dl.hhvm.com/ubuntu $(lsb_release -sc) main"
RUN apt-get -y update && \
  apt-get -y --no-install-recommends install sudo curl hhvm && \
  rm -rf /var/lib/apt/lists/*
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
