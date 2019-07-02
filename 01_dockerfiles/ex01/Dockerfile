FROM debian:9

RUN apt-get update && apt-get upgrade -y && \
    apt-get install wget bzip2 -y && \
    adduser --disabled-password --gecos "" teamspeak && \
    mkdir /opt/teamspeak && \
    chown teamspeak:teamspeak /opt/teamspeak/ && \
    chmod 0770 /opt/teamspeak/ && \
    wget http://dl.4players.de/ts/releases/3.5.0/teamspeak3-server_linux_amd64-3.5.0.tar.bz2 && \
    tar -xvjf teamspeak3-server_linux_amd64-3.5.0.tar.bz2 && \
    mv teamspeak3-server_linux_amd64/* /opt/teamspeak && \
    rm -rf teamspeak3-server_linux_amd64*

WORKDIR /opt/teamspeak

USER teamspeak

EXPOSE 9987/udp 10011 30033

ENV TS3SERVER_LICENSE=accept 

ENTRYPOINT ["./ts3server_minimal_runscript.sh", "start"]
