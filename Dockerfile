FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
        python3 \
        python3-pip 

RUN python3 -m pip install \
        meson \
        ninja 
RUN apt-get install wget xz-utils tar -y

RUN mkdir /progs && \
    cd /progs && \
    wget https://github.com/ldc-developers/ldc/releases/download/v1.21.0/ldc2-1.21.0-linux-x86_64.tar.xz 

RUN cd /progs && \
    tar -xvf ldc2-1.21.0-linux-x86_64.tar.xz && \
    rm ldc2-1.21.0-linux-x86_64.tar.xz
ENV PATH=$PATH:/progs/ldc2-1.21.0-linux-x86_64/bin

CMD ["/bin/bash"]