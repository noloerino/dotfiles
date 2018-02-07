# colorize prompt
PS1='\[\e[1;92m\]\u\[\e[0m\]@\[\e[0;33m\]\h\[\e[0m\]:\[\e[1;36m\]\w\[\e[0m\]\$ '
#PS1='\[\e[1;92m\]\u\$\[\e[0m\] '

# custom scripts
export PATH="$PATH:$HOME/bin"

# colorize python prompt
export PYTHONSTARTUP="$HOME/.pythonrc"
alias py='python3'

# colorize ls
alias ls='ls -F'
export CLICOLOR=1
export LSCOLORS="exfxcxdxbxegedabagacad"

# for the cabal
export PATH="$HOME/Library/Haskell/bin:$PATH"

# for easy text editing
alias sublime="open -a Sublime\ Text"

alias ipynb="jupyter notebook"

alias pgstart="pg_ctl -D /usr/local/var/postgres start"
alias pgstop="pg_ctl -D /usr/local/var/postgres stop"

# for tomcat
#export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-9.0.1.jdk/Contents/Home"
export CATALINA_HOME="$HOME/Documents/web/apache-tomcat-9.0.2"

# colorizes ant output
export ANT_ARGS="-logger org.apache.tools.ant.listener.AnsiColorLogger"
export ANT_OPTS="-Dant.logger.defaults=$HOME/.ant_opts"
 
#added by Anaconda3 4.4.0 installer
# export PATH="/Users/jhshi/anaconda/bin:$PATH"
