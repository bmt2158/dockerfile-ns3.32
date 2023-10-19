# Use the official Ubuntu 20.04 image as a base
FROM ubuntu:20.04

# Avoid interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Update and install the necessary packages
RUN apt-get update && apt-get install -y \
    build-essential \
    autoconf \
    automake \
    libxmu-dev \
    python3-pygraphviz \
    cvs \
    mercurial \
    bzr \
    git \
    cmake \
    p7zip-full \
    python3-matplotlib \
    python-tk \
    python3-dev \
    qt5-qmake \
    qt5-default \
    gnuplot-x11 \
    wireshark

# Download and install ns-3.32
WORKDIR /opt
RUN git clone https://gitlab.com/nsnam/ns-3-dev.git ns-3.32 && \
    cd ns-3.32 && \
    git checkout ns-3.32 && \
    ./waf configure --enable-examples --enable-tests && \
    ./waf build

# Set the default command to run ns-3
CMD ["/opt/ns-3.32/waf", "shell"]
