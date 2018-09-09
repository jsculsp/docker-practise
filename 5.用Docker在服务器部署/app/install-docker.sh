# 官方安装指南 Ubuntu 版本
# https://docs.docker.com/install/linux/docker-ce/ubuntu

sudo apt update

# docker 的源是 https，所以安装这些软件用于支持 https 的 apt 仓库
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

# 添加 Docker 的官方 GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# 设置官方 Docker 源
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# 安装 Docker
sudo apt update
sudo apt install -y docker-ce

# 如果你想验证 Docker 安装好了，可以运行一个 hello-world 容器
# sudo docker run hello-world
