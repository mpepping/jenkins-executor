FROM registry.access.redhat.com/ubi9:latest

LABEL maintainer "Martijn Pepping <martijn.pepping@automiq.nl>"
LABEL org.opencontainers.image.source https://github.com/mpepping/jenkins-executor

ENV TZ Europe/Amsterdam

RUN dnf install -y \
      git \
      go-toolset \
      java-11-openjdk-headless \
      jq \
			buildah \
			skopeo &&\
    dnf clean all

