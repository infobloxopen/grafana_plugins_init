FROM python:3-alpine@sha256:801b54e1ec51c23dd6f174f3f26a0ff5bf2a002c4bc0bf05b0e2b9237e10f5b8

ARG TARGETOS
ARG TARGETARCH

ENV OS=${TARGETOS}
ENV ARCH=${TARGETARCH}

COPY plugins.py ./

CMD [ "python", "./plugins.py"]
