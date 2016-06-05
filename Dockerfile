FROM gliderlabs/alpine:3.3

ENV LANG C

RUN apk add --no-cache curl bash git redis jq openssh perl

RUN git config --global user.name "Ivan Vojinovic" \
 && git config --global user.email "ivan.vojinovic@hs2solutions.com"

ADD assets/ /opt/resource/
RUN chmod +x /opt/resource/*
