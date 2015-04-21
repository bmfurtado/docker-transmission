# docker-plex
Dockerfile to install Transmission

---
Instructions

```docker run -d -v */path/to/watchdir*:/transmission-watch -v */path/to/downloads*:/transmission-downloads -p 51413:51413 -p 51413:51413/udp -e user=*username* -e pass=*password* bmfurtado/transmission```
