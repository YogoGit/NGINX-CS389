#!/bin/sh -e

# Only mess with the configuration if we're starting normally
# and NODE_IP is set.
if [ "$1" = "nginx" ] && [ -n "${NODE_IP}" ]; then
    sed -i "s/__NODE_IP__/${NODE_IP}/g" /etc/nginx/conf.d/default.conf
fi
exec "$@"
