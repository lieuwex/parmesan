FROM docker.io/vusec/parmesan

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y neovim texinfo

COPY ./tools /parmesan/tools

VOLUME ["/data", "/workdir"]
WORKDIR /workdir
