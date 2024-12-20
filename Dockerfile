FROM nginx:latest

# Remove default NGINX content
RUN rm -rf /usr/share/nginx/html/*

# Copy the contents of deploy-test into the NGINX web root
COPY deploy-test/* /usr/share/nginx/html/

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
