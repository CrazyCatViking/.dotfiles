#!/bin/bash

wget https://go.dev/dl/go1.25.0.linux-amd64.tar.gz -q -O go.tar.gz

rm -rf /usr/local/go
tar -C /usr/local -xzf go.tar.gz

rm go.tar.gz
