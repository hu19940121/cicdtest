
# 使用一个轻量级的 Nginx 镜像来运行构建后的应用
FROM nginx:stable-alpine
# 设置工作目录
WORKDIR /app
# 复制构建的文件到 Nginx 的 html 目录
COPY  . /usr/share/nginx/html

# 暴露端口
EXPOSE 80

# 启动 Nginx
CMD ["nginx", "-g", "daemon off;"]