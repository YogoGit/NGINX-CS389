FROM nginx:1.11.12-alpine

COPY conf/carroll.conf /etc/nginx/conf.d/default.conf

# Custom docker-entrypoint to allow for editing default.conf
COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["nginx", "-g", "daemon off;"]
