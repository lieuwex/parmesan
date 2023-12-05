FROM docker.io/vusec/parmesan

COPY ./tools /parmesan/tools

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y neovim

VOLUME ["/data"]
WORKDIR /data
