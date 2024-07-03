FROM nginx:latest
COPY nginx-emby/nginx.conf /etc/nginx/nginx.conf
COPY nginx-emby/conf.d /etc/nginx/conf.d
COPY nginx-emby/embyCache /var/cache/nginx/emby
COPY nginx-emby/log /var/log/nginx
