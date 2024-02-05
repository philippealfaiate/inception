# Définir une variable ARG pour la version de Debian
ARG DEBIAN_VERSION=bookworm-slim

FROM debian:${DEBIAN_VERSION}

RUN apt-get update && apt-get install -y nginx openssl

# Suppression des fichiers apres l'installation des paquets
RUN rm -rf /var/libapt/lists/*

WORKDIR /var/www

# NGINX SERVER
RUN apk add --no-cache nginx
RUN mkdir -p /var/www/html/
COPY nginx.conf /etc/nginx/nginx.conf

# OPENSSL
RUN apk add --no-cache openssl
RUN mkdir -p /etc/nginx/ssl


# Define Ports
EXPOSE 443

# Set Command && args
CMD ["nginx", "-g", "daemon off;"]

# Running nginx in debug mode
# command: [nginx-debug, '-g', 'daemon off;']