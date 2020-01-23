FROM abhin4v/hastatic:latest
MAINTAINER Chloé "Matcha" Desoutter <chloe.desoutter@bluenove.com>

COPY index.html /opt/site/
WORKDIR /opt/site
CMD [ "/usr/bin/hastatic" ]
