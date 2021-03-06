
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

# useful function to switch between java versions
# switch-to-java [version-number]
function switch-to-java(){
    if [[ -z $1 ]]; then echo $JAVA_HOME;return; fi
    export PATH=`echo $PATH | sed s/jdk[0-9.]*/jdk$1/`
    export JAVA_HOME=`echo $PATH | tr ":" "\n" | grep jdk$1 | sed "s/\\/bin$//"`
    echo "JAVA_HOME = $JAVA_HOME"
}
