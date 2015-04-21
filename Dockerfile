FROM ubuntu:trusty
MAINTAINER Bruno Furtado <bmfurtado@geekoo.eu>

RUN apt-get update && \
    apt-get install -qy --force-yes transmission-daemon && \
    ln -s /var/lib/transmission-daemon/downloads /transmission-downloads && \
    mkdir -p /var/lib/transmission-daemon/.config/transmission-daemon && \
    chown debian-transmission: /var/lib/transmission-daemon/.config/transmission-daemon && \
    usermod -d /var/lib/transmission-daemon debian-transmission

VOLUME ["/transmission-downloads", "/transmission-watch"]

USER debian-transmission

EXPOSE 51413 9091

CMD /usr/bin/transmission-daemon -f -u $user -v $pass -w /transmission-downloads -c /transmission-watch
