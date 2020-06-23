FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
        python3 \
        python3-pip \
        ldc2

RUN python3 -m pip install \
        meson \
        ninja 


CMD ["/bin/bash"]