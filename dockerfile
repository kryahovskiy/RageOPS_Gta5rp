FROM ubuntu:20.04

RUN apt-get update && apt-get install -y libatomic1

EXPOSE 22005/udp
EXPOSE 22006

WORKDIR /rageops

COPY ragemp-srv /rageops/ragemp-srv

RUN cd ragemp-srv && \
    chmod +x ragemp-server && \
    ./ragemp-server
