#!/bin/bash

set -ex

wget 'https://download.jetbrains.com/toolbox/jetbrains-toolbox-2.5.4.38621.tar.gz?_gl=1*h7eza9*_gcl_au*MTQ4ODk2NTM2MC4xNzQxOTQ5NTI1*FPAU*MTQ4ODk2NTM2MC4xNzQxOTQ5NTI1*_ga*OTAwMDAwNTYwLjE3NDE5NDk1MjQ.*_ga_9J976DJZ68*MTc0MTk0OTUyMy4xLjEuMTc0MTk1MDAwNS41OS4wLjA.' -q -O toolbox.tar.gz

tar -xzf toolbox.tar.gz
mv ./jetbrains-toolbox-* ./toolbox

./toolbox/jetbrains-toolbox

rm -rf ./toolbox
rm toolbox.tar.gz

