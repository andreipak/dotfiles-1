
alias find=gfind
alias tailf="tail -f"
alias wget="wget --no-check-certificate --content-disposition"
alias nano="nano -cw"
alias emacs="TERM=xterm-256color emacs"
alias sshp="ssh -oPasswordAuthentication=yes -o HostbasedAuthentication=no -o PubkeyAuthentication=no"
ec(){
    emacsclient -n $1
}

# Some fancy ls colors
alias ls='ls --color'

eval `dircolors ~/.dircolors`

# vim wrapper for bash to make ctrl-s and ctrl-q work
source ~/.vim/.bashrc


