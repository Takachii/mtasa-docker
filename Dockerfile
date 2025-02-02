FROM debian:bullseye-slim
ENV TERM=xterm-256color
EXPOSE 22003/udp 22005/tcp 22126/udp

RUN apt-get update && apt-get install -y \
	unzip \
	wget \
	default-libmysqlclient-dev \
	libncurses5-dev \
	libncursesw5-dev \
	libncurses5 \
	libncursesw5 \
	&& rm -rf /var/lib/apt/lists/*

WORKDIR /src

RUN wget -q http://linux.mtasa.com/dl/multitheftauto_linux_x64.tar.gz -O /tmp/mtasa.tar.gz \
    && tar -xzf /tmp/mtasa.tar.gz \
    && rm -rf /tmp/mtasa.tar.gz

VOLUME /src/shared-config /src/shared-modules /src/shared-resources /src/shared-http-cache

COPY entrypoint.sh .
RUN chmod +x entrypoint.sh
ENTRYPOINT /src/entrypoint.sh
