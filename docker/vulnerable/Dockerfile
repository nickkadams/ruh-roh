# Use the official NGINX image as the base
FROM nginx:1.25.3

# Remove the default configuration file to prevent conflicts
RUN rm /etc/nginx/conf.d/default.conf

# Copy your custom NGINX configuration file into the container
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy your custom website content into the default NGINX web root directory
COPY html/index.html /usr/share/nginx/html/index.html

# Expose port 80 to the host machine (optional, but good practice)
EXPOSE 80

# The default command runs NGINX in the foreground, necessary for Docker to track the process
CMD ["nginx", "-g", "daemon off;"]
