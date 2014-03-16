FROM debian:jessie

MAINTAINER Paul Andrew Liljenberg "letters@paulnotcom.se"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -qqy  ruby nodejs npm git-core
RUN ln -s /usr/bin/nodejs /usr/bin/node

RUN gem install compass
RUN npm install -g grunt-cli

ADD build.sh /
RUN chmod +x /build.sh

ENTRYPOINT ["/build.sh"]
