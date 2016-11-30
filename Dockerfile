FROM debian:jessie

MAINTAINER Bertrand Roussel <bertrand.roussel@cor-net.org>

ENV DEBIAN_FRONTEND noninteractive

RUN ( \
        apt-get update && \
        apt-get install -y wget procps \
    )

RUN ( \
        wget http://downloads.linux.hpe.com/SDR/downloads/ManagementComponentPack/GPG-KEY-mcp -O /tmp/proliant.gpg && \
        apt-key add /tmp/proliant.gpg && \
        ( echo "deb http://downloads.linux.HPE.com/SDR/repo/mcp/ jessie/current non-free" > /etc/apt/sources.list.d/proliant.sources.list ) && \
        apt-get update && \
        apt-get install -y hpacucli hpssacli \
    )

COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
