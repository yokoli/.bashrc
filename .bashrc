#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
#PS1='[\u@\h \W]\$ '

#prompt () {
#    _ERR=$?
#    _UID=$(id -u)
#    _JOB=$(jobs | wc -l)
#
#    [ $_UID -eq 0 ] && echo -n '?' || echo -n -e '-'
#    [ $_JOB -ne 0 ] && echo -n '!' || echo -n -e '-'
#    [ $_ERR -ne 0 ] && echo -n '!' || echo -n -e '-'
#}
#
#PS1='$(prompt) '

txtblk='\[\e[0;30m\]' # Black - Regular
txtred='\[\e[0;31m\]' # Red
txtgrn='\[\e[0;32m\]' # Green
txtylw='\[\e[0;33m\]' # Yellow
txtblu='\[\e[0;34m\]' # Blue
txtpur='\[\e[0;35m\]' # Purple
txtcyn='\[\e[0;36m\]' # Cyan
txtwht='\[\e[0;37m\]' # White
bldblk='\[\e[1;30m\]' # Black - Bold
bldred='\[\e[1;31m\]' # Red
bldgrn='\[\e[1;32m\]' # Green
bldylw='\[\e[1;33m\]' # Yellow
bldblu='\[\e[1;34m\]' # Blue
bldpur='\[\e[1;35m\]' # Purple
bldcyn='\[\e[1;36m\]' # Cyan
bldwht='\[\e[1;37m\]' # White
unkblk='\[\e[4;30m\]' # Black - Underline
undred='\[\e[4;31m\]' # Red
undgrn='\[\e[4;32m\]' # Green
undylw='\[\e[4;33m\]' # Yellow
undblu='\[\e[4;34m\]' # Blue
undpur='\[\e[4;35m\]' # Purple
undcyn='\[\e[4;36m\]' # Cyan
undwht='\[\e[4;37m\]' # White
bakblk='\[\e[40m\]'   # Black - Background
bakred='\[\e[41m\]'   # Red
bakgrn='\[\e[42m\]'   # Green
bakylw='\[\e[43m\]'   # Yellow
bakblu='\[\e[44m\]'   # Blue
bakpur='\[\e[45m\]'   # Purple
bakcyn='\[\e[46m\]'   # Cyan
bakwht='\[\e[47m\]'   # White
txtrst='\[\e[0m\]'    # Text Reset
CLEAR="\[\033[0m\]"
ptxtblk='\033[0;30m' # Black - Regular
ptxtred='\033[0;31m' # Red
ptxtgrn='\033[0;32m' # Green
ptxtylw='\033[0;33m' # Yellow
ptxtblu='\033[0;34m' # Blue
ptxtpur='\033[0;35m' # Purple
ptxtcyn='\033[0;36m' # Cyan
ptxtwht='\033[0;37m' # White
pbldblk='\033[1;30m' # Black - Bold
pbldred='\033[1;31m' # Red
pbldgrn='\033[1;32m' # Green
pbldylw='033[1;33m' # Yellow
pbldblu='\033[1;34m' # Blue
pbldpur='\033[1;35m' # Purple
pbldcyn='\033[1;36m' # Cyan
pbldwht='\033[1;37m' # White
unkblk='\033[4;30m' # Black - punderline
pundred='\033[4;31m' # Red
pundgrn='\033[4;32m' # Green
pundylw='\033[4;33m' # Yellow
pundblu='\033[4;34m' # Blue
pundpur='\033[4;35m' # Purple
pundcyn='\033[4;36m' # Cyan
pundwht='\033[4;37m' # White
pbakblk='\033[40m'   # Black - Backgropund
pbakred='\033[41m'   # Red
pbakgrn='\033[42m'   # Green
pbakylw='\033[43m'   # Yellow
pbakblu='\033[44m'   # Blue
pbakpur='\033[45m'   # Purple
pbakcyn='\033[46m'   # Cyan
pbakwht='\033[47m'   # White
ptxtrst='\033[0m'    # Text Reset
PCLEAR="\033[0m"

PS1="${txtwht}ayumi${txtwht} \w ${txtwht}> $CLEAR${txtwht}"
export PATH=$HOME/bin:$PATH
eval "`dircolors`"

#PS1='$(pwd | sed -e "s/\/home\/neko/~/") > '

# auto-complete for pacman when using sudo:
complete -cf sudo

# Add bin to path
PATH=$PATH:~/bin

##########################
#IF THIS BECOMES AN ISSUE#
#    FUCKING REMOVE IT   #
##########################

cd ~/
clear


function extr()      # Handy Extract Program
{
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf $1     ;;
            *.tar.gz)    tar xvzf $1     ;;
            *.bz2)       bunzip2 $1      ;;
            *.rar)       unrar x $1      ;;
            *.gz)        gunzip $1       ;;
            *.tar)       tar xvf $1      ;;
            *.tbz2)      tar xvjf $1     ;;
            *.tgz)       tar xvzf $1     ;;
            *.zip)       unzip $1        ;;
            *.Z)         uncompress $1   ;;
            *.7z)        7z x $1         ;;
            *)           echo "'$1' cannot be extracted via >extract<" 
;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}

# aliases
#-------------------
# Personnal Aliases
#-------------------
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias hidefile="chgrp $GID"
alias hidefile="setfattr -n XATTRPLACEHOLDER -v 1"
alias hide=hidefile
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias where='pwd'
alias fucking="sudo"
alias autossh="sshpass -p '$1' ssh $2@$3"
alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'
alias wimp='curl icanhazip.com'
alias du='du -kh'    # Makes a more readable output.
alias df='df -kTh'
alias pack='packer -S'
alias vpn='sudo openvpn --config /etc/openvpn/US_California.conf &'
alias h='history'
alias home='cd /home/neko'
alias c='clear'
alias killall='sudo killall'
alias wip='curl icanhazip.com'
alias pac="~/.bin/./pac"
alias spa="~/.bin/./spa"
alias abc="~/.bin/./abc"
alias line="~/.bin/./line"
alias tb="nc termbin.com 9999"

alias ls="ls -a --color=auto"
alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"
alias dir="dir --color=auto"
alias vdir="vdir --color=auto"
alias shred="shred -vuzn 777"

alias updt="sudo pacman -Syu --color always"
alias inst="sudo pacman -S --color always"
alias rmve="sudo pacman -R --color always"

alias rebt="sudo reboot"
alias wifi="sudo wifi-menu"

alias calc="concalc"
alias irc="weechat"
alias ttrs="yetris"

alias stop="sudo shutdown -h now"

alias mtrx="cmatrix"

alias bat='upower -i $(upower -e | grep BAT) | grep --color=never -E 
"state|to\ full|to\ empty|percentage"'
alias mem="free -m"

alias sshu="ssh -p 22 pi@192.168.1.12"
alias ssho="ssh -p 22 osmc@192.168.1.35"
alias sshp="ssh -p 22 pi@192.168.1.28"

alias pyth="sudo python2"

alias fr="setxkbmap fr"

# Some aliases for your own damn good
alias hidefile="chgrp $GID"

alias h='history'
alias j='jobs -l'
alias which='type -a'
alias db='strings ~/Items/.DB/* | grep'
