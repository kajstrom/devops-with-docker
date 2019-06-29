FROM ubuntu:16.04

WORKDIR /videos

RUN apt-get update -y && apt-get install -y rtmpdump wget ffmpeg \
    python3-dev python3-setuptools \
    python3-pip python3-crypto python3-requests python3-lxml \
    php-cli php-curl php-xml php-bcmath && \
    pip3 install --user --upgrade yle-dl && \
    apt-get purge -y --auto-remove python3-pip && \
    rm -rf /var/lib/apt/lists/*

ENV PATH=${PATH}:/root/.local/bin

ENTRYPOINT [ "yle-dl" ]