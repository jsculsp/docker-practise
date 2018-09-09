FROM ubuntu:18.04

# 使用阿里云的 apt 源
COPY sources.list /etc/apt/sources.list
RUN apt update
RUN apt -y install python3 python3-pip

# 使用阿里云的 pip 源
COPY pip.conf /root/.pip/pip.conf
RUN pip3 install flask


CMD ["python3"]
