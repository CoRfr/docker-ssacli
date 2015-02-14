FROM debian:latest

MAINTAINER Bertrand Roussel <bertrand.roussel@cor-net.org>

ENV DEBIAN_FRONTEND noninteractive

RUN ( \
        apt-get update && \
        apt-get install -y wget procps \
    )

RUN ( \
        wget http://downloads.linux.hp.com/SDR/repo/mcp/GPG-KEY-mcp -O /tmp/proliant.gpg && \
        apt-key add /tmp/proliant.gpg && \
        ( echo "deb http://downloads.linux.hp.com/SDR/repo/mcp/ wheezy/current non-free" > /etc/apt/sources.list.d/proliant.sources.list ) && \
        apt-get update && \
        apt-get install -y hpacucli \
    )

ENTRYPOINT hpacucli

