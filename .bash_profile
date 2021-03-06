# set env variables first
if [ -f "$HOME/.env" ]; then
    source "$HOME/.env"
fi

# aliases
if [ -f "$HOME/.bash_aliases" ]; then
    source "$HOME/.bash_aliases"
fi

# colorize prompt
PS1='\[\e[1;92m\]\u\[\e[0m\]@\[\e[0;33m\]\h\[\e[0m\]:\[\e[1;36m\]\w\[\e[0m\]\$ '
#PS1='\[\e[1;92m\]\$\[\e[0m\] '

# custom scripts
export PATH="$PATH:$HOME/bin"

# colorize python prompt
export PYTHONSTARTUP="$HOME/.pythonrc"

# colorize ls
export CLICOLOR=1
export LSCOLORS="exfxcxdxbxegedabagacad"

# for the cabal
export PATH="$HOME/Library/Haskell/bin:$PATH"

# colorizes ant output
export ANT_ARGS="-logger org.apache.tools.ant.listener.AnsiColorLogger"
export ANT_OPTS="-Dant.logger.defaults=$HOME/.ant_opts"
 
#added by Anaconda3 4.4.0 installer
# export PATH="/Users/jhshi/anaconda/bin:$PATH"

export PATH="$HOME/.cargo/bin:$PATH"

export PATH="$HOME/Documents/research/boolector/build/bin:$PATH"

export PATH="$HOME/.poetry/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="$HOME/.gem/ruby/2.6.0/bin:$PATH"
