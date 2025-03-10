# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User specific environment and startup programs
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:~/zig
export PATH=$PATH:~/.local/share/nvim/mason/bin
