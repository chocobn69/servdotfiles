#!/bin/env sh

docker pull haugene/transmission-openvpn
docker pull haugene/transmission-openvpn-proxy

docker rm -f torrent torrent-proxy

docker run --cap-add=NET_ADMIN --device=/dev/net/tun -d \
                     -v /home/choco/datas/:/data \
                     -v /etc/localtime:/etc/localtime:ro \
                     -e OPENVPN_PROVIDER=XXX \
                     -e OPENVPN_CONFIG=XXX \
                     -e OPENVPN_USERNAME=XXX \
                     -e OPENVPN_PASSWORD=XXX \
                     -e OPENVPN_OPTS=XXX \
                     -e WEBPROXY_ENABLED=false \
                     -e TRANSMISSION_PEER_PORT=34362 \
                     -e PUID=$(id -u) \
                     -e PGID=$(id -g) \
                     -e LOCAL_NETWORK=192.168.1.0/24 \
                     -e TRANSMISSION_SPEED_LIMIT_UP=1000 \
                     -e TRANSMISSION_SPEED_LIMIT_UP_ENABLED=true \
                     -e TRANSMISSION_RPC_USERNAME=torrent \
                     -e TRANSMISSION_RPC_PASSWORD=XXX \
                     -e TRANSMISSION_RPC_AUTHENTICATION_REQUIRED=True \
                     -e TRANSMISSION_WEB_UI=transmission-web-control \
                     -e PUID=1000 \
                     -e PGID=985 \
                     -e TRANSMISSION_RPC_PORT=9091 \
                     --dns 1.1.1.1 --dns 8.8.8.8 \
                     --log-driver json-file \
                     --log-opt max-size=10m \
                     --name torrent \
                     --restart=always \
                     -p 51413:51413 \
                     -p 34362:34362 \
                     haugene/transmission-openvpn

docker run -d \
      --link torrent:transmission \
      -p 9091:8080 \
      --name torrent-proxy \
      haugene/transmission-openvpn-proxy
