FROM alpine:latest
MAINTAINER Alexis Vuillaume <alexis.vuillaume@gmail.com>

RUN apk update \
    && apk add  --no-cache git  \
    && apk add python python-dev py-pip \
    && git clone https://github.com/xyrodileas/trape.git

RUN pip install -r trape/requirements.txt

CMD python trape.py

WORKDIR /trape
