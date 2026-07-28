FROM nginx:latest

# Copy the HTML files and assets
COPY ./html /usr/share/nginx/html

# Copy the entrypoint script
COPY ./entrypoint.sh /entrypoint.sh

# Make the script executable
RUN chmod +x /entrypoint.sh

# Set environment variable for testing (can be overridden in deployment)
ENV SR_URL="https://sr.explore.openg2p.org"
ENV PBMS_URL="https://pbms.explore.openg2p.org"
ENV SPAR_URL="https://spar.explore.openg2p.org"
ENV BRIDGE_URL="https://bridge.explore.openg2p.org"
ENV BENEFICIARY_PORTAL_URL="https://portal.explore.openg2p.org"

# Use the custom entrypoint
CMD ["/entrypoint.sh"]

