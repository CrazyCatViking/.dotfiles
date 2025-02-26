#!/bin/bash

if [ ! -d $HOME/mkcert ]; then
  git clone https://github.com/FiloSottile/mkcert $HOME/mkcert
fi

cd $HOME/mkcert
go build -ldflags "-X main.Version=$(git describe --tags)"
