FROM debian:bookworm
MAINTAINER James Cuzella <james.cuzella@lyraphase.com>
ARG DOCKER_TAG_IMAGE_SOURCE=''
ARG DOCKER_TAG_IMAGE_DESCRIPTION=''
LABEL org.opencontainers.image.source="${DOCKER_TAG_IMAGE_SOURCE}"
LABEL org.opencontainers.image.description="${DOCKER_TAG_IMAGE_DESCRIPTION}"

# VNC doesn't start without xfonts-base
RUN apt-get update && \
    apt-get -y -u dist-upgrade && \
    apt-get -y --no-install-recommends install supervisor inetutils-syslogd dnsutils net-tools && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
COPY supervisor/ /etc/supervisor/conf.d/
COPY scripts/ /usr/local/bin/
COPY syslog.conf /etc/syslog.conf

CMD ["/usr/local/bin/boot-supervisord"]
