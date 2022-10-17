FROM debian:bullseye

#Required variables set by default
#ENV KEY="haqq_impulse"

RUN apt-get update && apt-get install -y git build-essential sudo dnsutils debconf apt-utils tzdata ca-certificates curl jq bash wget liblz4-tool aria2 expect supervisor

RUN cd /opt/ && wget https://dl.google.com/go/go1.19.2.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.19.2.linux-amd64.tar.gz \
	&& export PATH=$PATH:/usr/local/go/bin 

#ENV GOROOT /usr/lib/go
ENV GOPATH /usr/local/go/bin
ENV PATH /usr/local/go/bin:$PATH

RUN cd /opt && git clone https://github.com/Fantom-foundation/go-opera.git \ 
    && cd go-opera/ \
    && git checkout release/1.1.2-rc.2 \ 
    && make  
#    && cd build/ \
#    && wget https://download.fantom.network/mainnet-109331-pruned-mpt.g


WORKDIR /opt


COPY run_node.sh /
RUN chmod a+x /run_node.sh

CMD ["/run_node.sh"]
