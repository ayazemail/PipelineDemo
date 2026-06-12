# Use a small nginx image to serve a static HTML app
FROM nginx:alpine

# Remove the default nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy the static site into nginx's public folder
COPY index.html /usr/share/nginx/html/index.html

# Expose the HTTP port
EXPOSE 80

# Start nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
