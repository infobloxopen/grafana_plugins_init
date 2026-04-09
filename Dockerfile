FROM python:3-alpine@sha256:d4e7a02ff532c98a8a8f71aba0b4e8f419faad4a49801e554da6ebeef7b6eed7

ARG TARGETOS
ARG TARGETARCH

ENV OS=${TARGETOS}
ENV ARCH=${TARGETARCH}

COPY plugins.py ./

CMD [ "python", "./plugins.py"]
