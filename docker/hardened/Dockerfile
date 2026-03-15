# Use the Chainguard NGINX image as the base
# Only latest tag is free
FROM cgr.dev/chainguard/nginx:latest

# Copy your custom NGINX configuration file into the container
COPY nginx.conf /etc/nginx/nginx.conf

# Copy your custom website content into the default NGINX web root directory
COPY html/index.html /usr/share/nginx/html/index.html

# Expose port 80 to the host machine (optional, but good practice)
EXPOSE 8080

# The default command runs NGINX in the foreground, necessary for Docker to track the process
# CMD ["/usr/sbin/nginx", "-c", "/etc/nginx/nginx.conf", "-e", "/dev/stderr", "-g", "daemon off;"]
