FROM python:3-alpine@sha256:6f873e340e6786787a632c919ecfb1d2301eb33ccfbe9f0d0add16cbc0892116

ARG TARGETOS
ARG TARGETARCH

ENV OS=${TARGETOS}
ENV ARCH=${TARGETARCH}

COPY plugins.py ./

CMD [ "python", "./plugins.py"]
