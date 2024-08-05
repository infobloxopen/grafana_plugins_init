FROM python:3-alpine@sha256:63094abdaf49e046da9f6529ecd6ce4d853d9bfbf00a25c52bbbb68b3223b490

ARG TARGETOS
ARG TARGETARCH

ENV OS=${TARGETOS}
ENV ARCH=${TARGETARCH}

COPY plugins.py ./

CMD [ "python", "./plugins.py"]
