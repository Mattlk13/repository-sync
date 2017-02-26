## BUILDING
##   (from project root directory)
##   $ docker build -t go-for-mattlk13-repository-sync .
##
## RUNNING
##   $ docker run go-for-mattlk13-repository-sync

FROM gcr.io/stacksmith-images/minideb-buildpack:jessie-r10

MAINTAINER Bitnami <containers@bitnami.com>

ENV STACKSMITH_STACK_ID="r1qpa08" \
    STACKSMITH_STACK_NAME="Go for Mattlk13/repository-sync" \
    STACKSMITH_STACK_PRIVATE="1"

# Install required system packages
RUN install_packages libc6

RUN bitnami-pkg install go-1.8rc3-0 --checksum 0d7d11046ef65c85799dfcd21f4b4769c624098a8ff4b0a1915068f545f6aa7a

ENV GOPATH=/gopath
ENV PATH=$GOPATH/bin:/opt/bitnami/go/bin:$PATH

## STACKSMITH-END: Modifications below this line will be unchanged when regenerating

# Go base template
COPY . /app
WORKDIR /app
