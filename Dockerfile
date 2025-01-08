FROM python:3-alpine@sha256:76400ba76ffc77f62f588f51b902ae763c2b0bfaecfda7aafdf1cc10415fd766

ARG TARGETOS
ARG TARGETARCH

ENV OS=${TARGETOS}
ENV ARCH=${TARGETARCH}

COPY plugins.py ./

CMD [ "python", "./plugins.py"]
