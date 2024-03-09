FROM ubuntu:24.04

# Based on github.com/ticky/docker-pspdev

ENV PSPDEV /pspdev
ENV PSPSDK $PSPDEV/psp
ENV PATH   $PATH:$PSPDEV/bin:$PSPSDK/bin
ENV PKG_CONFIG_PATH $PSPSDK/lib/pkgconfig:$PKG_CONFIG_PATH

WORKDIR /

RUN apt update \
    && apt install -y build-essential cmake pkgconf libreadline8 libusb-1.0-0 libgpgme11 libarchive-tools fakeroot wget  \
    && apt clean \
    && wget https://github.com/pspdev/pspdev/releases/download/latest/pspdev-ubuntu-latest.tar.gz \
    && tar xfv pspdev-ubuntu-latest.tar.gz \
    && rm pspdev-ubuntu-latest.tar.gz

WORKDIR /src
CMD ["/bin/bash"]
