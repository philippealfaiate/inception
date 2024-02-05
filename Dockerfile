ARG DEBIAN_VERSION=bullseye-slim

FROM debian:${DEBIAN_VERSION}

RUN apt-get update && apt-get install -y nginx openssl

RUN rm -rf /var/libapt/lists/*

