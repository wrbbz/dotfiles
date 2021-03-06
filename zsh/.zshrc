export ZSH=$HOME/.oh-my-zsh
export EDITOR="vim"
export VISUAL="vim"
export PATH=$PATH:/opt/apache-maven-3.5.0
export PATH=/opt/apache-maven-3.5.0/bin:$PATH
export _JAVA_AWT_WM_NONREPARENTING=1
export PATH=$PATH:$HOME/.cargo/bin
export BROWSER="GTK_BACKEND=wayland qutebrowser --backend webengine"

# #Arch wiki
autoload -Uz compinit promptinit
compinit
promptinit
# Theme
ZSH=/usr/share/oh-my-zsh/
export ZSH_THEME="spaceship"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"
DISABLE_AUTO_UPDATE="true"

plugins=(zsh-autosuggestions git pulumi)

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/oh-my-zsh.sh

alias gits="ssh-add ~/.ssh/xxon_rsa && ssh-add ~/.ssh/id_rsa"
alias wttr="curl wttr.in"
alias untar="tar -xvzf"
alias bckgrnd="feh ~/Pictures/background.jpg --bg-fill"
alias rstudev="sudo udevadm control --reload-rules && udevadm trigger"
alias trpntn="mpv --no-video --shuffle https://www.youtube.com/playlist\?list\=UUa10nxShhzNrCE1o2ZOPztg"
alias trans='__trans'
alias def='__def'
__trans() {
	sdcv --color --data-dir /usr/share/stardict/dic/trans/ $* | less -R
}
__def() {
	sdcv --color --data-dir /usr/share/stardict/dic/def/ $* | less -R
}

alias dit='__dit'
alias mit='__mit'

__dit() {
    if [ -d "$1" ] ; then
	  echo "\e[4;32mRepository:\x1B[0m $1"
	  git -C $*
	else
	  echo "you should specify a directory with git repo as first argument"
	  exit 1
	fi
}
__mit() {
    for repo in `ls`
	do
	  echo "\e[4;32mRepository:\x1B[0m $repo"
	  git -C $repo $*
	  echo ''
	done
}

alias oui='__oui'
__oui() {
	grep $* -i /usr/share/nmap/nmap-mac-prefixes
}
alias ssproxy='ssh -D 8118 -C -N'
alias md2pdf="pandoc -s --pdf-engine=xelatex -V mainfont='Fira Code' -o"
alias cal="cal --monday"
