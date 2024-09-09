FROM python:3-alpine@sha256:bb5d0ac04679d78a1258e7dfacdb4d9bdefe9a10480eaf9b4bb09445d076369f

ARG TARGETOS
ARG TARGETARCH

ENV OS=${TARGETOS}
ENV ARCH=${TARGETARCH}

COPY plugins.py ./

CMD [ "python", "./plugins.py"]
