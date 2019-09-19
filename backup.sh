#!/bin/sh
BACKUP=~/servdotfiles

mkdir -p $BACKUP/torrent
cp ~/torrent/run.sh $BACKUP/torrent/run.sh
sed -i 's/OPENVPN_PROVIDER=.* /OPENVPN_PROVIDER=XXX /' $BACKUP/torrent/run.sh
sed -i 's/OPENVPN_CONFIG=.* /OPENVPN_CONFIG=XXX /' $BACKUP/torrent/run.sh
sed -i 's/OPENVPN_USERNAME=.* /OPENVPN_USERNAME=XXX /' $BACKUP/torrent/run.sh
sed -i 's/OPENVPN_PASSWORD=.* /OPENVPN_PASSWORD=XXX /' $BACKUP/torrent/run.sh
sed -i 's/OPENVPN_OPTS=.* /OPENVPN_OPTS=XXX /' $BACKUP/torrent/run.sh
sed -i 's/TRANSMISSION_RPC_PASSWORD=.* /TRANSMISSION_RPC_PASSWORD=XXX /' $BACKUP/torrent/run.sh
