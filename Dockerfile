# Use the official Gotenberg image as the base image
FROM thecodingmachine/gotenberg:7

# Set environment variables for Basic Authentication
ENV GOTENBERG_API_BASIC_AUTH_USERNAME=admin \
    GOTENBERG_API_BASIC_AUTH_PASSWORD=supersecretpassword

# Expose the port Gotenberg listens on
EXPOSE 3000

# Start the Gotenberg service with the correct entrypoint
CMD ["gotenberg", "--api-enable-basic-auth"]
