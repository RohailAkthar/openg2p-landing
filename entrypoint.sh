#!/bin/bash

# Debug: Print the value we are seeing (this will show up in Rancher logs)
echo "SR_REGISTRATION_PORTAL_URL is: $SR_REGISTRATION_PORTAL_URL"

# Replace placeholders and move to root
envsubst < /usr/share/nginx/html/html/landing.html | sed 's/\.\.\/public/public/g' > /usr/share/nginx/html/index.html

# Ensure CSS is available at the root level alongside index.html
cp /usr/share/nginx/html/html/style.css /usr/share/nginx/html/style.css

# Start NGINX
nginx -g 'daemon off;'

