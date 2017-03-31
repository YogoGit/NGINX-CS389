FROM nginx:1.11.12-alpine

COPY conf/carroll.conf /etc/nginx/carroll.conf
