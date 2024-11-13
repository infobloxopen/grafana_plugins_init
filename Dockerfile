FROM python:3-alpine@sha256:fcbcbbecdeae71d3b77445d9144d1914df55110f825ab62b04a66c7c33c09373

ARG TARGETOS
ARG TARGETARCH

ENV OS=${TARGETOS}
ENV ARCH=${TARGETARCH}

COPY plugins.py ./

CMD [ "python", "./plugins.py"]
