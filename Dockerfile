# Step 1: Use the official Nginx image from Docker Hub
FROM nginx:mainline-alpine3.20-slim

# Copy the custom Nginx config file
COPY default.conf /etc/nginx/conf.d/default.conf

# Step 2: Copy the static website (HTML file) into the Nginx web directory
COPY index.html /usr/share/nginx/html/index.html

# Step 3: Expose port 80 to make the web server accessible
EXPOSE 80
