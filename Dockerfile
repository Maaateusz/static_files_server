# image nginx:alpine
FROM nginx:alpine

# /app directory as the working directory
WORKDIR /static_files_server

# This tells Docker to copy the contents of the . directory into the /app directory
COPY . .

# Expose the port for access
EXPOSE 8080

# configure Nginx when it runs inside the Docker container
COPY ./nginx.conf /etc/nginx/nginx.conf

# Append "daemon off;" to the beginning of the configuration
# RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
# CMD service nginx start

