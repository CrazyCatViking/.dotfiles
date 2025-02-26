#!/bin/bash

curl -sS https://starship.rs/install.sh | sh 
echo 'eval "$(starship init bash)"' >> $HOME/.bashrc
