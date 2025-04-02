# Use the official NGINX image as the base image
FROM nginx:alpine

# Copy the HTML and CSS files into the NGINX container
COPY ./index.html /usr/share/nginx/html/index.html
COPY ./styles.css /usr/share/nginx/html/styles.css

# Expose port 80 to make the app accessible
EXPOSE 80

# Start NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]
