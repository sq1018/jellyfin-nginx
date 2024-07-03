# 使用最新的nginx基础镜像
FROM nginx:latest

# 复制配置文件到容器内
COPY ./nginx-emby/nginx.conf /etc/nginx/nginx.conf
COPY ./nginx-emby/conf.d /etc/nginx/conf.d
COPY ./nginx-emby/embyCache /var/cache/nginx/emby
COPY ./nginx-emby/log /var/log/nginx

# 暴露端口
EXPOSE 8091

# 设置容器启动时运行的命令
CMD ["nginx", "-g", "daemon off;"]
