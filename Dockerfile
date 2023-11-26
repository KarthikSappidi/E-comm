# FROM - set the base image we use from
FROM nginx

# Copy - copy files to above image
COPY . /usr/share/nginx/html

