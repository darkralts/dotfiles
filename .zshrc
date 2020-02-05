export ZSH="/home/sofiane/.config/zsh"
ZSH_THEME="avit"
plugins=(git)
source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

#ALIASES

#############DEFAULT
alias dir="dir --color=auto"
alias vdir="vdir --color=auto"
alias grep="grep --color=always"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"
alias ls="ls --color=auto"
alias ll="ls -alFh --color=auto"
alias la="ls -a --color=auto"
alias l="ls -CF --color=auto"
alias .l="dirs -v"
alias vi="vim"
alias mk="mkdir"
alias shred="shred -zf"
alias wget="wget -U 'noleak'"
alias curl="curl --user-agent 'noleak'"
alias iip="curl --max-time 10 -w '\n' http://ident.me"
alias speed="curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python -"
alias xcolor="xrdb -query | grep"

#############SHRT
alias drive='exec ~/Tools/Drive/drive.sh'
alias led='leafpad ~/.zshrc'
alias pac='sudo pacman -S'
alias pacs='sudo pacman -Ss'
alias pacr='sudo pacman -Rns'
alias pacrd='sudo pacman -Rdd'
alias pacu='sudo pacman -Syu'
alias pacc='sudo pacman -Sc && sudo pacman -Scc'
alias vbox='sudo virtualbox'
alias usenv='DRI_PRIME=1'
alias q='exit'
alias cl='clear'
alias HTB='sudo openvpn ~/Labs/Pentest/HTB/Connect/8l4ck21.ovpn'

#############DIRECTORYS
alias pentestf='cd /home/Pentest'
alias HTBD='cd ~/Labs/Pentest/HTB/Boxes'
alias lab='cd ~/Labs/'
alias testprojects='cd ~/Labs/Testing/'
###DOCKER
alias docker='sudo docker'
alias kalicon='docker run -h kali -i -t sofiane/kali bash'
alias pythem='sudo docker run -i -t m4n3dw0lf/pythem:latest'
alias evilginx='docker run -it -p 53:53/udp -p 80:80 -p 443:443 evilginx2'
alias lockymocky='docker run -it --name lockdoor-container -w /Lockdoor-Framework --net=host sofianehamlaoui/lockdoor'

#############APPS
alias ipair='idevicepair pair'
alias gcln='git clone'
alias pythonhttp='python -m http.server'
alias ve="virtualenv ve"
alias snap='sudo snap'
alias msfconsole='sudo msfconsole'
alias fm="ranger"
alias sfm="sudo ranger"
alias sth="sudo thunar ."
alias th="thunar . &"
alias h="htop"
alias {v,vi,vim}="vim"

#############NMAP 
alias nmpscanofile='nmap -sV -sV -oA'
alias scanalltcp='nmap -v -sV -sC -p 1-65535 -T4 -A'
alias scanalludp='nmap -v -sV -sC -sU  -p 1-65535 -T4 -A'

#############PKGLIST
alias pkglist="pacman -Qneq > ~/.pkglist.txt"
alias aurlist="pacman -Qmeq > ~/.aurlist.txt"

#############GIT
alias gc="git clone"
alias gi="git init"
alias gs="git status"
alias glog="git log --stat --pretty=oneline --graph --date=short"
alias gg="gitg &"
alias gad="git add --all"
