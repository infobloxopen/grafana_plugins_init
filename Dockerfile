FROM python:3-alpine@sha256:c2f41e6a5a67bc39b95be3988dd19fbd05d1b82375c46d9826c592cca014d4de

ARG TARGETOS
ARG TARGETARCH

ENV OS=${TARGETOS}
ENV ARCH=${TARGETARCH}

COPY plugins.py ./

CMD [ "python", "./plugins.py"]
