FROM ubuntu:22.04 as base

ARG DEBIAN_FRONTEND=noninteractive

# XV6 things

EXPOSE 25001

RUN apt-get update \
  && apt-get install -y \
    git \
    build-essential \
    gdb-multiarch \
    qemu-system-misc \
    gcc-riscv64-linux-gnu \
    binutils-riscv64-linux-gnu

RUN mkdir /root/.config \
    && mkdir /root/.config/gdb \
    && echo "add-auto-load-safe-path /xv6/.gdbinit" > "/root/.config/gdb/gdbinit"

WORKDIR /xv6