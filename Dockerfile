FROM python:3-alpine@sha256:94457973ea8a27a799f0b8ea1fe3e3147fcbebaed63497a8af63b28195a08108

ARG TARGETOS
ARG TARGETARCH

ENV OS=${TARGETOS}
ENV ARCH=${TARGETARCH}

COPY plugins.py ./

CMD [ "python", "./plugins.py"]
