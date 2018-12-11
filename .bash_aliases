# .bash_aliases

case $(uname) in 
    Darwin) DEVICE="MAC" ;;
    Linux)
        HN=$(hostname)
        if [[ $HN == *.brc ]]; then
            DEVICE="SAVIO"
        else
            DEVICE="LINUX"
        fi
        ;;
esac

if [ $DEVICE == "MAC" ]; then
    alias gvim='open -a MacVim'
    alias subl="open -a Sublime\ Text"
    alias mdown="open -a MacDown"
    alias ipynb="jupyter notebook"
    alias anon='. anon'
    alias pgstart="pg_ctl -D /usr/local/var/postgres start"
    alias pgstop="pg_ctl -D /usr/local/var/postgres stop"
    alias ls='ls -F'
else
    alias ls='ls -F --color=auto'
fi

if [ $DEVICE == "SAVIO" ]; then
    alias slowmode='. slowmode'
    alias tosavio="srun --pty -A ac_scsguest -p savio -t 00:05:00 bash -i"
    alias myjobs="squeue -u $USER"
    alias mod='module'
    alias ml='module load'
    alias mrm='module rm'
    alias wall='echo "please reconsider your life decisions"'
fi

alias py='python3'
alias venv="virtualenv"

alias tma="tmux attach -t"
alias tms="tmux new -s"

alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'

alias finduser='grep /etc/passwd -e'
