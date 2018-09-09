# 重新构建镜像
docker build -t pywebimage .

# 删除容器
docker rm -f pyweb

# 启动容器
docker run -d -p 8080:5000 \
    --name pyweb \
    --mount type=bind,source="${PWD}",target=/code \
    pywebimage
