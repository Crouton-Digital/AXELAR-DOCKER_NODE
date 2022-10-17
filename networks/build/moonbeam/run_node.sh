#!/bin/bash 

echo "Start Script"

#if [ -f "/root/.avalanchego/configs/node.json" ];  
#then
  echo " START NODE"
#  /opt/node/avalanchego/avalanchego --http-host=0.0.0.0 &

chmod a+x /opt/node/moonbeam
/opt/node/moonbeam  --port 30333 --rpc-port 9933 --unsafe-rpc-external --rpc-cors=all --ws-port 9944 --unsafe-ws-external --execution wasm --wasm-execution compiled --pruning=archive --state-cache-size 0 --db-cache 5000 --chain moonbeam --name "$NODENAME" -- --port 30334 --rpc-port 9934 --ws-port 9945 --execution wasm --pruning=1000 --name="$NODENAME (Embedded Relay)"

  wait -n

  exit $?

#else
#  echo "### Initialization node ###"
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
#fi

