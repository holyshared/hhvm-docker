FROM ubuntu:17.10
MAINTAINER Noritaka Horio <holy.shared.design@gmail.com>
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update && \
  apt-get -y install software-properties-common apt-transport-https && \
  rm -rf /var/lib/apt/lists/*
RUN apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xB4112585D386EB94
RUN add-apt-repository https://dl.hhvm.com/ubuntu
RUN apt-get -y update && \
  apt-get -y --no-install-recommends install sudo curl hhvm && \
  rm -rf /var/lib/apt/lists/*
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
