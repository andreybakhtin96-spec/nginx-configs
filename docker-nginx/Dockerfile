FROM nginx:alpine

COPY nginx.conf /etc/nginx/nginx.conf
COPY html /usr/share/nginx/html
COPY music /usr/share/nginx/music

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
