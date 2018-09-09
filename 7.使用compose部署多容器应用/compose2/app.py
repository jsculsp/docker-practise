from flask import Flask
from redis import Redis


app = Flask(__name__)
# redisdemo 是 compose 中创建的主机名，由 docker-compose.yml 中指定
# compose 会给每个容器提供 DNS 服务保证容器间互相访问
redis = Redis(host='redisdemo', port=6379)


@app.route('/')
def index():
    count = redis.incr('hits')
    return 'Hello from compose {}'.format(count)


if __name__ == "__main__":
    app.run(host="0.0.0.0", debug=True)
