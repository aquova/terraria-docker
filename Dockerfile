FROM archlinux:base

RUN pacman -Syu --noconfirm && pacman -S --noconfirm unzip

RUN mkdir /terraria /worlds
COPY terraria.zip /
RUN unzip terraria.zip -d /terraria && \
    rm terraria.zip

COPY config.ini /terraria/Terraria
WORKDIR /terraria/Terraria
CMD ./TerrariaServer.bin.x86_64 -config config.ini
