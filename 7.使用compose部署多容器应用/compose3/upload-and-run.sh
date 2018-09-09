# 上传项目到服务器
scp -r . ubuntu@111.231.98.114:/tmp/compose33

# 在服务器重启项目
ssh ubuntu@111.231.98.114 'sh /tmp/compose33/run.sh'
