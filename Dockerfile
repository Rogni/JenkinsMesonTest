FROM python:3

RUN pip install \
        meson \
        ninja 
RUN apt-get install wget xz-utils tar -y

FROM dlanguage/ldc

CMD ["/bin/bash"]