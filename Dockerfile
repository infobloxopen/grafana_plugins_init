FROM python:3-alpine@sha256:992c45b1cf7affc93ff4aea53b28afb6921065bccb05b84cb69ac83475a7227c

ARG TARGETOS
ARG TARGETARCH

ENV OS=${TARGETOS}
ENV ARCH=${TARGETARCH}

COPY plugins.py ./

CMD [ "python", "./plugins.py"]
