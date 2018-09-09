FROM ubuntu:18.04


RUN apt update
RUN apt -y install python3 python3-pip
RUN pip3 install flask


COPY app.py /code/app.py


WORKDIR /code


CMD ["python3", "app.py"]
