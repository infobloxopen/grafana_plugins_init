FROM python:3-alpine@sha256:aeff64320ffb81056a2afae9d627875c5ba7d303fb40d6c0a43ee49d8f82641c

ARG TARGETOS
ARG TARGETARCH

ENV OS=${TARGETOS}
ENV ARCH=${TARGETARCH}

COPY plugins.py ./

CMD [ "python", "./plugins.py"]
