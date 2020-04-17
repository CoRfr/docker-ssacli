FROM debian:jessie

MAINTAINER Bertrand Roussel <bertrand.roussel@cor-net.org>

ENV DEBIAN_FRONTEND noninteractive

RUN ( \
        apt-get update && \
        apt-get install -y wget procps \
    )

RUN ( \
        apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C208ADDE26C2B797 && \
        ( echo "deb http://downloads.linux.HPE.com/SDR/repo/mcp/ jessie/current non-free" > /etc/apt/sources.list.d/proliant.sources.list ) && \
        apt-get update && \
        apt-get install -y ssacli \
    )

COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]