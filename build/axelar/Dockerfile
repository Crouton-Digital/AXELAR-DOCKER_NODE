FROM debian:bullseye


RUN apt-get update && apt-get install -y tzdata ca-certificates curl jq bash wget liblz4-tool aria2 expect supervisor
#    && apt-get -y purge && apt-get -y clean \
#    && apt-get -y autoremove && rm -rf /var/lib/apt/lists/* \
#    && mkdir /opt/scripts

COPY vald-start.sh /opt/scripts/vald-start.sh
COPY install.sh /opt/scripts/
COPY run_node.sh /opt/scripts/
RUN chmod a+x /opt/scripts/*.sh
RUN /opt/scripts/install.sh

CMD [ "/opt/scripts/run_node.sh"]
