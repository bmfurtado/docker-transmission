# docker-plex
Dockerfile to install Transmission

---
Instructions

```docker run -d -v */path/to/transmission/stuff*:/var/lib/transmission-daemon -p 51413:51413 -p 51413:51413/udp -e user=*username* -e pass=*password* bmfurtado/transmission```
