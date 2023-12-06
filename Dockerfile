FROM docker.io/vusec/parmesan

COPY ./tools /parmesan/tools

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y neovim texinfo

VOLUME ["/data", "/workdir"]
WORKDIR /workdir
