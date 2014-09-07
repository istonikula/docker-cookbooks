FROM dockerfile/java:oracle-java8
MAINTAINER Isto Nikula "isto.nikula@iki.fi"
ENV REFRESHED_AT 2014-09-07

RUN wget -nv -O /tmp/go-server.deb http://download.go.cd/gocd-deb/go-server-14.2.0-377.deb
RUN dpkg -i /tmp/go-server.deb
RUN rm /tmp/go-server.deb

EXPOSE 8153
EXPOSE 8154

CMD /etc/init.d/go-server start && tail -f /var/log/go-server/go-server.log
