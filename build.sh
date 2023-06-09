#!/bin/bash

set -x

FEDORA_VERSION=${FEDORA_VERSION:-38}
podman build \
       -t jdk11-toolbox:$FEDORA_VERSION  \
       --build-arg=FEDORA_VERSION=$FEDORA_VERSION \
       --build-arg=BUILD_DATE="$(date  --rfc-3339=seconds)" \
       --build-arg VCS_REF="$(git rev-parse HEAD)" \
       .
