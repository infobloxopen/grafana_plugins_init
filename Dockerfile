FROM python:3-alpine@sha256:d696c999babcff2d6194727e5c36908e7741aa530e6ed0d8e2fb4b6cfb7be43d

ARG TARGETOS
ARG TARGETARCH

ENV OS=${TARGETOS}
ENV ARCH=${TARGETARCH}

COPY plugins.py ./

CMD [ "python", "./plugins.py"]
