#!/bin/sh

cat > /usr/share/nginx/html/config.js <<EOF
window.APP_CONFIG = {
  FM_KEY: '${VUE_APP_FM_KEY}',
  API_URL: '${VUE_APP_API_URL}',
  AUTH_URL: '${VUE_APP_AUTH_URL}'
};
EOF

nginx -g 'daemon off;'
