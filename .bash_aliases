# .bash_aliases

case $(uname) in 
    Darwin) DEVICE="MAC" ;;
    Linux)
        HN=$(hostname)
        if [[ $HN == *.brc ]] || [[ $HN == *.savio* ]]; then
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
    alias yt-sound="youtube-dl -x"
    alias journal="vim $HOME/Desktop/Journal/dated/$(date '+%Y-%m-%d')"
    alias gtkwave="open -a gtkwave"
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
    alias findmod='find /global/software/sl-7.x86_64/modfiles -type d -exec ls -d {} \; | grep'
fi

if [ $DEVICE == "LINUX" ]; then
    alias ssh-watch='sudo tail -f /var/log/auth.log | grep ssh'
    alias ssh-recent='sudo less /var/log/auth.log | grep ssh | tail -n 10'
fi

alias py='python3'
alias venvup=". venvup"
alias newvenv="python3 -m virtualenv venv"

alias tma="tmux attach -t"
alias tms="tmux new -s"

alias l='ls'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'

alias finduser='grep /etc/passwd -e'

alias findcompiler='objdump --full-contents --section=.comment'

alias todos='rg --ignore -i todo'

