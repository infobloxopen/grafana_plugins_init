FROM python:3-alpine@sha256:030102bf02171eb24efc32cb7a630d369ddf10f2c562733bb95b9b8edc6bf7f8

ARG TARGETOS
ARG TARGETARCH

ENV OS=${TARGETOS}
ENV ARCH=${TARGETARCH}

COPY plugins.py ./

CMD [ "python", "./plugins.py"]
