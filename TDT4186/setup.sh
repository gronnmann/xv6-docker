#!/bin/bash

# Clone xv6 and move here
git clone https://github.com/mit-pdos/xv6-riscv.git
mv ./xv6-riscv/README ./xv6-riscv/README_xv6
mv -v ./xv6-riscv/* .

# Setup gdb-server to work with the docker compose
sed 's/127\.0\.0\.1/xv6-debug/' .gdbinit.tmpl-riscv > .gdbinit.tmpl-riscv