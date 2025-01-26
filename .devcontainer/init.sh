#!/bin/sh
sudo apt update
sudo apt install -y openocd pkg-config gdb-multiarch aria2
sudo ln -s /usr/bin/gdb-multiarch /usr/bin/arm-none-eabi-gdb

aria2c -x16 -s16 -d /home/developer -o gcc-arm-none-eabi.tar.bz https://developer.arm.com/-/media/Files/downloads/gnu-rm/10.3-2021.10/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux.tar.bz2?rev=78196d3461ba4c9089a67b5f33edf82a&hash=5631ACEF1F8F237389F14B41566964EC


rustup target add thumbv6m-none-eabi
rustup target add thumbv7em-none-eabi
rustup target add thumbv7em-none-eabihf
rustup target add thumbv7m-none-eabi

cargo install cargo-generate

# tar -xvf /home/developer/gcc-arm-none-eabi.tar.bz
