FROM ubuntu:24.04

RUN apt update && apt install -y \
    build-essential git wget liblzma-dev \
    libhwloc-dev libhwloc15 cmake autoconf \
    libtool check flex openssl libssl-dev libpcap-dev \
    libpcre2-dev pkg-config zlib1g-dev iproute2

RUN git clone https://github.com/snort3/libdaq.git
WORKDIR /libdaq
RUN ./bootstrap && \
    ./configure && \
    make -j $(nproc) && \
    make install

WORKDIR /
RUN git clone https://github.com/dugsong/libdnet.git
WORKDIR /libdnet
RUN ./configure && \
    make -j $(nproc) && \
    make install

WORKDIR /
RUN git clone https://github.com/open-mpi/hwloc.git
WORKDIR /hwloc
RUN ./autogen.sh && \
    ./configure && \
    make -j $(nproc) && \
    make install

WORKDIR /
RUN git clone https://luajit.org/git/luajit.git
WORKDIR /luajit
RUN make -j $(nproc) && \
    make install

WORKDIR /
RUN git clone https://github.com/snort3/snort3.git
WORKDIR /snort3
RUN export output_path=/snorty && \
    ./configure_cmake.sh --prefix=$output_path
WORKDIR /snort3/build
RUN make -j $(nproc) install

RUN mkdir /snortlogs && ldconfig

WORKDIR /snorty/bin