FROM nginx:alpine

LABEL org.opencontainers.image.source https://github.com/gunsch/gunsch.cc

# Development support
RUN apk add bash

# Set up site
COPY out /srv/public_html
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

RUN nginx
