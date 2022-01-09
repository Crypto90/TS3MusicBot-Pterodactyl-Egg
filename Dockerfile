## ============================================================== ##
## Docker image for TS3MusicBot                                   ##
## ============================================================== ##
FROM openjdk:11-jdk-slim
MAINTAINER TS3MusicBot.net, <support@ts3musicbot.de>

RUN apt update \
	&& apt -y upgrade \
	&& apt install -y curl ca-certificates openssl tar unzip bash python3 \
  && apt install -y xvfb libglib2.0-0 libxrender-dev libxrandr2 libxcursor-dev libx11-xcb-dev ffmpeg xdotool x11-utils libegl1-mesa libgl1-mesa-dri libnss3 libpci3 libxslt1.1 libxss1 libdbus-glib-1-2 libgtk-3-0 \
	&& update-alternatives --install /usr/bin/python python /usr/bin/python3 1 \
	&& useradd -d /home/container -m container
	
USER container
ENV USER container
ENV HOME /home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]
