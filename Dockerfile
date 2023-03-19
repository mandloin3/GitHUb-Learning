# Use a base image with nginx pre-installed
FROM nginx:latest

# Copy our custom nginx configuration file into the container
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80 so that the container can be accessed via web browser
EXPOSE 80

# Start nginx when the container is run
CMD ["nginx", "-g", "daemon off;"]
