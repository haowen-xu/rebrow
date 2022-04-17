FROM python:2.7-alpine

MAINTAINER Marian Steinbach <marian@giantswarm.io>

ENV DEBIAN_FRONTEND noninteractive

ADD requirements.txt /
RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple -r /requirements.txt
ADD . /app/

EXPOSE 5001
ENTRYPOINT ["python", "-u", "/app/runserver.py"]
