
FROM alpine:3.18.4

RUN apk update
RUN apk upgrade

# NGINX SERVER
RUN apk add --no-cache nginx
RUN mkdir -p /var/www/html/
COPY nginx.conf /etc/nginx/nginx.conf

# OPENSSL
RUN apk add --no-cache openssl
RUN mkdir -p /etc/nginx/ssl


# Define Ports
EXPOSE	443

# Set Command && args
CMD ["nginx", "-g", "daemon off;"]

# Running nginx in debug mode
# command: [nginx-debug, '-g', 'daemon off;']