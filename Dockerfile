FROM python:3-alpine@sha256:d24ed567ee3b972478a232ceff84b0d002e18ee9f5d38234ecbffece23dfa084

ARG TARGETOS
ARG TARGETARCH

ENV OS=${TARGETOS}
ENV ARCH=${TARGETARCH}

COPY plugins.py ./

CMD [ "python", "./plugins.py"]
