FROM debian:jessie

ADD WEB-INF /tmp/WEB-INF
ADD bootstrap.sh /bootstrap.sh

ENTRYPOINT ["/bootstrap.sh"]
CMD ["echo","start","tomcat","command","goes","here"]
