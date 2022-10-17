FROM debian:bullseye

#Required variables set by default
#ENV KEY="haqq_impulse"
#ENV CHAINID="haqq_54211-2"
#ENV MONIKER="HaqqImpulse"
#ENV KEYRING="test"
#ENV KEYALGO="eth_secp256k1"
#ENV LOGLEVEL="debug"
#ENV TRACE=""
#ENV CONFIG_PATH="/root/.haqqd"

RUN apt-get update && apt-get install -y sudo dnsutils debconf apt-utils tzdata ca-certificates curl jq bash wget liblz4-tool aria2 expect supervisor

WORKDIR /opt/node

RUN wget -nd -m https://github.com/PureStake/moonbeam/releases/download/v0.26.1/moonbeam 
#&& tar -xvf avalanchego-linux* && rm -rf *.tar.gz

COPY run_node.sh /
RUN chmod a+x /run_node.sh

CMD ["/run_node.sh"]
#CMD [ "/opt/node/avalanchego/avalanchego", "--http-host=0.0.0.0"]
