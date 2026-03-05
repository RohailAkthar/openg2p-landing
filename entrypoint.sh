#!/bin/bash

# Replace placeholders in HTML with environment variables
envsubst '${SR_REGISTRATION_PORTAL_URL} ${SR_PENSIONER_REGISTRY_URL} ${SR_PENSION_MANAGEMENT_URL} ${SR_DASHBOARD_URL} ${SR_ADMIN_CONSOLE_URL} ${SR_BENEFICIARY_PORTAL_URL} ${SR_MINLO_DASHBOARD_URL} ${SR_G2P_BRIDGE_URL} ${SR_SPAR_URL}' < /usr/share/nginx/html/html/landing.html > /usr/share/nginx/html/html/index.html

# Start NGINX
nginx -g 'daemon off;'

