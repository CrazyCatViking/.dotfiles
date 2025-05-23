# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:~/zig
export PATH=$PATH:~/.local/share/nvim/mason/bin

export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# rust
. "$HOME/.cargo/env"

# flutter
export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH="$PATH:$HOME/flutter/bin"
export ANDROID_HOME="$HOME/Android/Sdk"

# aliases
alias fr="flutter run --dart-define-from-file=.env"
