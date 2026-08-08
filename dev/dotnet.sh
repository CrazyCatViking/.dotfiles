#!/bin/bash

set -ex

curl -L https://dot.net/v1/dotnet-install.sh -o dotnet-install.sh

bash dotnet-install.sh --channel 6.0
bash dotnet-install.sh --channel 7.0
bash dotnet-install.sh --channel 8.0
bash dotnet-install.sh --channel 9.0
bash dotnet-install.sh --channel 10.0

rm dotnet-install.sh
