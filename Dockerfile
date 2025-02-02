## ============================================================== ##
## TS3MusicBot Docker image for Pterodactyl.                      ##
## https://www.TS3MusicBot.net                                    ##
## Support: support@ts3musicbot.de                                ##
## ============================================================== ##
FROM bitnami/minideb:bullseye

MAINTAINER TS3MusicBot.net, <support@ts3musicbot.de>

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update \
	&& apt -y upgrade \
	&& apt install -y openjdk-11-jre \
	&& apt install -y imagemagick \
	&& apt install -y curl ca-certificates openssl tar unzip bash python3 procps \
	&& apt install -y xvfb libglib2.0-0 libxrender-dev libxrandr2 libxcursor-dev libx11-xcb-dev ffmpeg xdotool x11-utils libegl1-mesa libgl1-mesa-dri libnss3 libpci3 libxslt1.1 libxss1 libdbus-glib-1-2 libgtk-3-0 libavcodec-extra* mplayer \
 	&& apt install -y libfreetype6 libfreetype-dev libfreetype6-dev libbrotli-dev libxcb-image0 libxcb-keysyms1 libxcb-randr0 libxcb-render-util0 libxcb-xinerama0 libxcb-xkb1 libxkbcommon-x11-0 libevent-2.1-7 libatomic1 libxcb-icccm4 libwebpdemux2 libwebp6 \
	&& update-alternatives --install /usr/bin/python python /usr/bin/python3 1 \
	&& rm -rf /var/lib/apt/lists/* \
	&& useradd -d /home/container -m container \
	&& chmod 755 /home/container
	
USER container
ENV USER container
ENV HOME /home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]
