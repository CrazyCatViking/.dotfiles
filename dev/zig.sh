#!/bin/bash

wget https://ziglang.org/download/0.15.1/zig-x86_64-linux-0.15.1.tar.xz -q -O zig.tar.xz

rm -rf ~/zig
tar -C ~ -xJf zig.tar.xz
mv ~/zig-* ~/zig

rm zig.tar.xz
