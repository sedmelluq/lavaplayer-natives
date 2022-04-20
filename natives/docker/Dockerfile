FROM centos:7.9.2009
MAINTAINER whya5448@gmail.com

WORKDIR /build

RUN yum install -y which wget \
    make gcc-c++ \
    java-11-openjdk-headless java-11-openjdk-devel

RUN wget https://github.com/Kitware/CMake/releases/download/v3.23.1/cmake-3.23.1-linux-x86_64.sh
RUN chmod u+x cmake-3.23.1-linux-x86_64.sh && \
    mkdir cmake && \
    ./cmake-3.23.1-linux-x86_64.sh --skip-license --prefix=/build/cmake && \
    ln -s /build/cmake/bin/cmake /usr/bin/cmake

ENV CMAKE_ROOT /build/cmake

CMD ["/build/gradlew", ":natives:compileNatives"]
#RUN update-alternatives --config java