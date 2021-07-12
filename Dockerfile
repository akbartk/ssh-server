FROM linuxserver/openssh-server:latest

LABEL maintainer="aptalca and mod by akbartk"

RUN \
apk add --no-cache --upgrade \
	mysql-client \
	wget \
	git \
	vim && \
usermod --shell /bin/bash abc && \
	rm -rf \
	/tmp/*

WORKDIR /app
