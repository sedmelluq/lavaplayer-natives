FROM ubuntu:bionic-20220401

WORKDIR /build

# RECOMMAND TO USING APT MIRROR
# https://launchpad.net/ubuntu/+archivemirrors
#RUN cd /etc/apt && \
#   sed -i 's/archive.ubuntu.com/mirror.kakao.com/g' sources.list && \
#   sed -i 's/security.ubuntu.com/mirror.kakao.com/g' sources.list

RUN apt update

RUN apt install -y wget dos2unix \
    make automake cmake g++ \
    openjdk-11-source

COPY run.sh /script/run.sh
RUN chmod +x /script/run.sh && \
    dos2unix /script/run.sh

ENTRYPOINT ["sh", "-c", "/script/run.sh"]