export EDITOR="vim"
export VISUAL="vim"
export BROWSER="GTK_BACKEND=wayland qutebrowser --backend webengine"

# Arch wiki
autoload -Uz compinit promptinit
compinit
promptinit

bindkey -e

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"
DISABLE_AUTO_UPDATE="true"

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

plugins=(zsh-autosuggestions git pulumi glab)

alias wttr="curl wttr.in"
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

alias ls='exa'
alias ls -l='exa -l'


eval "$(starship init zsh)"
eval "$(direnv hook zsh)"
