FROM python:3-alpine@sha256:d4daf858ce04f8e6f9a3f73d036f7a8dbb3b9541dccdb87e93993589449c5b9e

ARG TARGETOS
ARG TARGETARCH

ENV OS=${TARGETOS}
ENV ARCH=${TARGETARCH}

COPY plugins.py ./

CMD [ "python", "./plugins.py"]
