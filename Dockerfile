FROM mirakc/mirakc:3.4.58-debian

ENV RECISDB_VERSION=1.2.3

RUN curl -LO https://github.com/kazuki0824/recisdb-rs/releases/download/${RECISDB_VERSION}/recisdb_${RECISDB_VERSION}-1_amd64.deb \
  && sudo apt install ./recisdb_${RECISDB_VERSION}-1_amd64.deb \
  && rm ./recisdb_${RECISDB_VERSION}_amd64.deb
