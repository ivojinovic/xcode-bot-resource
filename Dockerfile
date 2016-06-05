FROM gliderlabs/alpine:3.3

ENV LANG C

RUN apk --update add --no-cache curl bash git redis ca-certificates jq openssh perl

RUN git config --global user.name "Ivan Vojinovic" \
 && git config --global user.email "ivan.vojinovic@hs2solutions.com"

ADD assets/ /opt/resource/
ADD fly-bin /opt/resource/fly
RUN chmod +x /opt/resource/*
