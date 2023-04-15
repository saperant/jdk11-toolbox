ARG FEDORA_VERSION
FROM registry.fedoraproject.org/fedora-toolbox:$FEDORA_VERSION

ARG BUILD_DATE
ARG VCS_REF
LABEL authoritative-source-url=ghcr.io \
      build-date="$BUILD_DATE" \
      maintainer="Saku Rantamäki <saku.rantamaki@iki.fi>" \
      name=saperant/jdk11-toolbox \
      summary="Toolbox container based on Fedora with JDK11" \
      url="https://github.com/saperant/jdk11-toolbox/" \
      usage="This image is meant to be used with the toolbox command" \
      vcs-ref="$VCS_REF" \
      vcs-url="https://github.com/saperant/jdk11-toolbox/"

RUN dnf -y update && \
    dnf -y install \
        vim \
        tmux \
        ranger \
        java-11-openjdk-devel.x86_64 \
        maven \
        ant && \
    dnf clean all

