FROM python:3-alpine3.19

ARG WSDD_VER=0.8

WORKDIR /usr/src/app

RUN apk add --no-cache curl bash && \
    curl https://raw.githubusercontent.com/christgau/wsdd/v${WSDD_VER}/src/wsdd.py -o wsdd.py && \
    apk del curl

copy docker-cmd.sh .

CMD [ "./docker-cmd.sh"]
