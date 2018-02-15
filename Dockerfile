FROM phusion/baseimage
MAINTAINER projects@ve3lsr.ca

# RUN apt-get update && apt-get install -yq git && apt-get clean && rm -rf /var/lib/apt/lists/* /var/tmp/* /tmp/*

WORKDIR /opt/

ADD ambeserver* /tmp

RUN dpkg -i /tmp/ambeserver*

CMD /usr/sbin/AMBEserver
