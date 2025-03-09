#!/bin/bash

wget https://ziglang.org/download/0.14.0/zig-linux-x86_64-0.14.0.tar.xz -q -O zig.tar.xz

rm -rf ~/zig
tar -C ~ -xJf zig.tar.xz
mv ~/zig-* ~/zig

rm zig.tar.xz
