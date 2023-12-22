FROM ubuntu:latest

RUN apt update && apt upgrade && apt install -y file

WORKDIR /opt/
ADD ["./scripts/", "/opt/scripts/"]

ENTRYPOINT ["bash", "/opt/scripts/menu.sh"]

#FROM bash: 5.2.21


#ADD scripts

#ENTRYPOINT ["bash", "menu.sh"]

