### Alpine Privoxy

## Usage

Environment Variables (Optional)
SOCKS5IP    - the ip of the socks5 server (tor)
SOCKS5PORT  - the port of the socks5 server (tor)
I2PIP       - the ip of the i2p proxy
I2PPORT     - the port of the i2p proxy

Privoxy listens to 8118

Sample command
```bash
docker run -d -p 8118:8118 -e SOCKS5IP=10.5.0.5 -e SOCKS5PORT=9050 -e I2PIP=10.5.0.5  -e I2PPORT=4444 danielguerra/alpine-privoxy
```

Haproxy
```
docker run \
   -v $(pwd):/usr/local/etc/haproxy:ro \
   -p 81:80 \
   -p 8404:8404 \
   haproxytech/haproxy-alpine:2.7.1
```