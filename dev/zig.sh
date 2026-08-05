#!/bin/bash

wget https://ziglang.org/download/0.16.0/zig-x86_64-linux-0.16.0.tar.xz -q -O zig.tar.xz

rm -rf ~/zig
tar -C ~ -xJf zig.tar.xz
mv ~/zig-* ~/zig

rm zig.tar.xz
