FROM ubuntu:14.04
MAINTAINER Pat Brisbin <pbrisbin@gmail.com>

RUN apt-get update
RUN apt-get install -q -y \
  build-essential curl git language-pack-en pigz zlib1g-dev

RUN update-locale LANG=en_US.UTF-8

RUN bash -c \
  'source <( curl -sL https://github.com/mietek/halcyon/raw/master/setup.sh )'

WORKDIR /source
ENTRYPOINT ["/app/halcyon/halcyon"]
