ARG MIRAKC_VERSION=3.4.58

FROM mirakc/mirakc:${MIRAKC_VERSION}-debian

ARG RECISDB_VERSION=1.2.3

RUN apt-get update && apt-get upgrade -y && \
  ARCH=$(dpkg --print-architecture) && \
  curl -LO https://github.com/kazuki0824/recisdb-rs/releases/download/${RECISDB_VERSION}/recisdb_${RECISDB_VERSION}-1_${ARCH}.deb \
  && apt -y install ./recisdb_${RECISDB_VERSION}-1_${ARCH}.deb \
  && rm ./recisdb_${RECISDB_VERSION}-1_${ARCH}.deb
