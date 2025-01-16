
# Install dependencies and Nginx
RUN apt update && apt install -y curl nginx

# Copy the app files into the container (if you have a web page to serve)
COPY index.html /var/www/html/

# Expose the port
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
