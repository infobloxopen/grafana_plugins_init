FROM python:3-alpine@sha256:e0e4d3db19333a970e7acfdcb8863efe065be6c3038ef5018694f98162bffec0

ARG TARGETOS
ARG TARGETARCH

ENV OS=${TARGETOS}
ENV ARCH=${TARGETARCH}

COPY plugins.py ./

CMD [ "python", "./plugins.py"]
