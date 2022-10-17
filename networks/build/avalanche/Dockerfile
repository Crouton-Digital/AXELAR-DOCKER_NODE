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

RUN wget -nd -m https://github.com/ava-labs/avalanchego/releases/download/v1.9.0/avalanchego-linux-amd64-v1.9.0.tar.gz && tar -xvf avalanchego-linux* && rm -rf *.tar.gz && mv avalanchego* avalanchego

COPY run_node.sh /
RUN chmod a+x /run_node.sh

CMD ["/run_node.sh"]
#CMD [ "/opt/node/avalanchego/avalanchego", "--http-host=0.0.0.0"]
