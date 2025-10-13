#!/bin/bash

# Replace placeholders in HTML with environment variables
envsubst '${SR_URL} ${PBMS_URL} ${SPAR_URL} ${BRIDGE_URL} ${BENEFICIARY_PORTAL_URL}' < /usr/share/nginx/html/landing.html > /usr/share/nginx/html/index.html.tmp
mv /usr/share/nginx/html/index.html.tmp /usr/share/nginx/html/index.html

# Start NGINX
nginx -g 'daemon off;'

