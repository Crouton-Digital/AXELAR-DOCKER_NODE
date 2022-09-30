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

RUN apt-get update && apt-get install -y tzdata ca-certificates curl jq bash wget liblz4-tool aria2 expect supervisor
#    && apt-get -y purge && apt-get -y clean \
#    && apt-get -y autoremove && rm -rf /var/lib/apt/lists/* \
#    && mkdir /opt/scripts

COPY vald-start.sh /opt/scripts/vald-start.sh
COPY install.sh /opt/scripts/
COPY run_node.sh /opt/scripts/
RUN chmod a+x /opt/scripts/*.sh
RUN /opt/scripts/install.sh

#COPY --from=builder /haqq/build/haqqd /usr/bin/haqqd
#COPY scripts/run_node.sh . 

#RUN chmod +x ./run_node.sh

#EXPOSE 8545 8546 9090 9091 26656 26657

CMD [ "/opt/scripts/run_node.sh"]
