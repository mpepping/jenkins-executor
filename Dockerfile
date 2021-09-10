FROM registry.access.redhat.com/ubi8:latest

LABEL maintainer "Martijn Pepping <martijn.pepping@automiq.nl>"
LABEL org.opencontainers.image.source https://github.com/mpepping/jenkins-executor

ENV TZ Europe/Amsterdam

RUN dnf install -y \
      curl \
      git \
      go-toolset \
      java-11-openjdk-headless \
      jq

