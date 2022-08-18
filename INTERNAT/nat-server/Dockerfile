FROM ubuntu:latest

RUN apt-get update && apt-get install 
RUN apt-get install -y iptables-persistent
RUN apt-get install -y telnet
RUN apt-get install net-tools -y 
RUN apt-get install -y netcat 
RUN apt-get install -y iputils-ping 
RUN apt-get install -y traceroute
RUN apt-get install -y iproute2
RUN apt-get install -y jq
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/

ADD start.sh start.sh
ADD start.sh sleep.sh

RUN chmod +x start.sh

ENTRYPOINT ["tail", "-f", "/dev/null"]


# CMD ["./start.sh"]
