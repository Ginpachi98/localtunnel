FROM mhart/alpine-node
MAINTAINER Emmanuel Frecon <efrecon@gmail.com>

RUN npm install -g localtunnel

ENV LTHOST="http://localtunnel.me"
ENV LTSUBDOMAIN=""
ENV LTLOCALHOST="localhost"
ENV LTPORT="80"

ENTRYPOINT node /usr/bin/lt --port $LTPORT --subdomain $LTSUBDOMAIN -
