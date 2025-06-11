#!/bin/bash
set -ex

wget https://github.com/supabase/cli/releases/download/v2.24.3/supabase_linux_amd64.tar.gz -q -O supabase-cli.tar.gz

rm -rf ~/supabase-cli
mkdir -p ~/supabase-cli
tar -C ~/supabase-cli -xzf supabase-cli.tar.gz

rm supabase-cli.tar.gz

