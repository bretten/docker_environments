FROM ubuntu:22.04
RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y curl && \
  apt-get install -y vim && \
  apt-get install -y git && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y software-properties-common && \
  apt-get install -y gnupg2
