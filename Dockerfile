FROM python:3-alpine@sha256:25a82f6f8b720a6a257d58e478a0a5517448006e010c85273f4d9c706819478c

ARG TARGETOS
ARG TARGETARCH

ENV OS=${TARGETOS}
ENV ARCH=${TARGETARCH}

COPY plugins.py ./

CMD [ "python", "./plugins.py"]
