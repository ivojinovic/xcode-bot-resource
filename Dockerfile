FROM gliderlabs/alpine:3.3

ENV LANG C

RUN apk add --no-cache bash

ADD assets/ /opt/resource/
RUN chmod +x /opt/resource/*
