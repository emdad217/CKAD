# Use the official Nginx base image
FROM ubuntu:latest

#Identify the maintainer of an image
LABEL version="1.0.0"
LABEL maintainer="emdadul.haque217@gmail.com"


# update the image to the latest packages
RUN apt-get update && apt-get upgrade -y

# Install Nginx to test
RUN apt-get install -y nginx

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]