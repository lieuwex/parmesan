FROM docker.io/vusec/parmesan

# neovim
RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y neovim

# texinfo for GNU projectsj
RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y texinfo

# libssl for curl
RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y libssl-dev

# autoconf and libtool for various projects
RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y autoconf libtool

# set compiler to clang
RUN echo 'export CC=gclang' >> /root/.bashrc
RUN echo 'export CXX=gclang++' >> /root/.bashrc

# copy our fork of parmesan tools
COPY ./tools /parmesan/tools

# HACK: TEMP: protobuf-compiler
RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y protobuf-compiler

VOLUME ["/data", "/workdir"]
WORKDIR /workdir
