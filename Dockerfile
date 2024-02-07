ARG DEBIAN_VERSION=bullseye-slim

FROM debian:${DEBIAN_VERSION}

RUN apt-get update && apt-get install --no-install-recommends -y nginx; echo "daemon off;" >> /etc/nginx/nginx.conf

RUN rm -rf /var/libapt/lists/*

COPY ./nginx/nginx.conf:/etc/nginx/nginx.conf dest

EXPOSE 80

CMD ["/usr/sbin/nginx"]
