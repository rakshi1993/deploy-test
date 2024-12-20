#from ninx
FROM nginx:latest

# Remove the default NGINX content
RUN rm -rf /usr/share/nginx/html/*

# Copy your frontend files to the NGINX web root
COPY . /usr/share/nginx/html/

# Ensure NGINX runs in the foreground
CMD ["nginx", "-g", "daemon off;"]
