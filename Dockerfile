FROM nginx:latest

# Copy the HTML and CSS files into a subdirectory to preserve relative paths
COPY ./html /usr/share/nginx/html/html

# Copy the public folder
COPY ./public /usr/share/nginx/html/public

# Copy the entrypoint script
COPY ./entrypoint.sh /entrypoint.sh

# Make the script executable and fix Windows line endings
RUN chmod +x /entrypoint.sh && sed -i 's/\r$//' /entrypoint.sh

# Remove default nginx welcome page
RUN rm /usr/share/nginx/html/index.html

# Set environment variable for testing (can be overridden in deployment)
ENV SR_REGISTRATION_PORTAL_URL="https://sr.explore.openg2p.org"
ENV SR_PENSIONER_REGISTRY_URL="https://sr.explore.openg2p.org"
ENV SR_PENSION_MANAGEMENT_URL="https://sr.explore.openg2p.org"
ENV SR_DASHBOARD_URL="https://sr.explore.openg2p.org"
ENV SR_ADMIN_CONSOLE_URL="https://sr.explore.openg2p.org"
ENV SR_BENEFICIARY_PORTAL_URL="https://portal.explore.openg2p.org"
ENV SR_MINLO_DASHBOARD_URL="https://sr.explore.openg2p.org"
ENV SR_G2P_BRIDGE_URL="https://bridge.explore.openg2p.org"
ENV SR_SPAR_URL="https://spar.explore.openg2p.org"

# Use the custom entrypoint
CMD ["/entrypoint.sh"]

