FROM debian:stretch
LABEL maintainer="Voice Developers <dev@voice.org>"
LABEL description="Dockerised VoiceCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
