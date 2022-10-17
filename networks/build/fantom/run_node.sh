#!/bin/bash 

echo "Start Script"

if [ -f "/root/mainnet-109331-pruned-mpt.g" ];  
then
  echo " START NODE"
  /opt/go-opera/build/opera --genesis /root/mainnet-109331-pruned-mpt.g --identity $IDENTITY --cache 8096 --http --http.addr 0.0.0.0 --http.corsdomain '*' --http.vhosts "*" --http.api "eth,net,web3" &

  wait -n

  exit $?

else
  echo "### Initialization node ###"
  cd /root \
    && wget https://download.fantom.network/mainnet-109331-pruned-mpt.g

#  foundIP="$(wget -qO- eth0.me)"
#
#  mkdir -p /root/.avalanchego/configs
#  cd /root/.avalanchego/configs
#
#  echo "{" >>node.json
#  echo "  \"http-host\": \"\",">>node.json
#  echo "  \"api-admin-enabled\": true,">>node.json
#  echo "  \"index-enabled\": true,">>node.json
#  echo "  \"public-ip\": \"$foundIP\"">>node.json
#  echo "}" >>node.json
#
#  mkdir -p /root/.avalanchego/configs/chains/C/
#  cd /root/.avalanchego/configs/chains/C/
#
#  echo "{" >>config.json
#    echo "  \"state-sync-enabled\": true,">>config.json
#    echo "  \"pruning-enabled\": false">>config.json
#  echo "}" >>config.json
#
fi

