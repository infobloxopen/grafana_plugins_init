FROM python:3-alpine@sha256:32385e61c3414ffa5a6dbf52feace89f758ad68709a48d376d56a0232162665a

ARG TARGETOS
ARG TARGETARCH

ENV OS=${TARGETOS}
ENV ARCH=${TARGETARCH}

COPY plugins.py ./

CMD [ "python", "./plugins.py"]
