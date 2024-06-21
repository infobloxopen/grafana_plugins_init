FROM python:3-alpine@sha256:dc095966439c68283a01dde5e5bc9819ba24b28037dddd64ea224bf7aafc0c82

ARG TARGETOS
ARG TARGETARCH

ENV OS=${TARGETOS}
ENV ARCH=${TARGETARCH}

COPY plugins.py ./

CMD [ "python", "./plugins.py"]
