FROM archlinux:base

RUN pacman -Syu --noconfirm && pacman -S --noconfirm unzip

ARG VERSION=1442
ARG FILENAME=terraria-server-$VERSION.zip

ADD https://terraria.org/api/download/pc-dedicated-server/$FILENAME /$FILENAME

RUN unzip $FILENAME && \
    mkdir /terraria /worlds && \
    mv $VERSION/Linux/* /terraria && \
    rm -rf $VERSION $FILENAME && \
    chmod +x /terraria/TerrariaServer.bin.x86_64

COPY config.ini /terraria
WORKDIR /terraria
CMD ./TerrariaServer.bin.x86_64 -config config.ini
