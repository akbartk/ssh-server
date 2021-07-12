FROM linuxserver/openssh-server:latest

LABEL maintainer="aptalca - mod by akbartk"

RUN \
echo "**** install runtime packages ****" && \
echo "**** original from linuxserver/openssh-server ****" && \
apk add --no-cache --upgrade \
	mysql-client \
	wget \
	git \
	vim && \
usermod --shell /bin/bash abc && \
	rm -rf \
	/tmp/*