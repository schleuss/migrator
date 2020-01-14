FROM ubuntu:18.04

RUN apt-get update -qq && apt-get install -qqy \
    apt-transport-https \
    ca-certificates \
    curl

RUN curl -sSL https://get.docker.com/ | sh

COPY migrator.sh /usr/local/bin/migrator.sh

VOLUME /var/lib/docker

CMD ["/usr/local/bin/migrator.sh"]
