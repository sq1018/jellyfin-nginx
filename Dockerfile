FROM nginx:latest

# 创建config目录并复制配置文件和数据目录到镜像中
RUN mkdir -p /config
COPY nginx.conf /config/nginx.conf
COPY conf.d /config/conf.d
COPY embyCache /config/embyCache
COPY log /config/log

# 设置工作目录为/config
WORKDIR /config

# 暴露端口
EXPOSE 8091

# 启动Nginx服务
CMD ["nginx", "-g", "daemon off;"]
