FROM ubuntu:16.04
LABEL maintainer "SATO Makoto"

RUN apt-get update \
 && apt-get install -y build-essential \
                       module-assistant \
                       aptitude \
                       apt-transport-https \
                       ca-certificates \
                       curl \
                       software-properties-common \
                       net-tools \
 && add-apt-repository ppa:webupd8team/java \
 && apt-get update \
 && apt-get install oracle-java8-installer \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

