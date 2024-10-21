FROM python:3-alpine@sha256:c38ead8bcf521573dad837d7ecfdebbc87792202e89953ba8b2b83a9c5a520b6

ARG TARGETOS
ARG TARGETARCH

ENV OS=${TARGETOS}
ENV ARCH=${TARGETARCH}

COPY plugins.py ./

CMD [ "python", "./plugins.py"]
