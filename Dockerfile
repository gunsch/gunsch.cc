FROM nginx:alpine
RUN apk add bash
#COPY default.conf /etc/nginx/conf.d/default.conf
#COPY index.html /usr/share/nginx/html/index.html
#COPY nginx/default.conf /etc/nginx/conf.d/default.conf
RUN nginx
