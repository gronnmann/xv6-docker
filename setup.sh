#!/bin/bash

echo "Setting up xv6 environment"

# Clone xv6 and move here
git clone https://github.com/mit-pdos/xv6-riscv.git
mv ./xv6-riscv/README ./xv6-riscv/README_xv6
mv ./xv6-riscv/{.,}* .

rm -rf ./xv6-riscv

echo "Setting up gdb to connect to the docker container"

# Setup gdb target connection port to the one exposed by docker
sed -i.bak 's/127\.0\.0\.1/xv6-debug/' ./.gdbinit.tmpl-riscv