export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="spaceship"
plugins=(git)

source $ZSH/oh-my-zsh.sh
export PATH=$PATH:/opt/apache-maven-3.5.0
export PATH=/opt/apache-maven-3.5.0/bin:$PATH
export _JAVA_AWT_WM_NONREPARENTING=1
export PATH=$PATH:/home/arseny/mediahdd/local/RPi/crosstool-ng/bin/
export VISUAL="vim"
export TERM=xterm
setxkbmap -layout 'us,ru' -option 'grp:caps_toggle,grp_led:caps'
alias gits="ssh-add ~/.ssh/xxon_rsa && ssh-add ~/.ssh/id_rsa"
alias wttr="curl wttr.in"
alias untar="tar -xvzf"
alias bckgrnd="feh ~/Pictures/background.jpg --bg-fill"
alias rstudev="sudo udevadm control --reload-rules && udevadm trigger"
alias virtenvactivate="source ~/mediahdd/libs/tensorflow/bin/activate"
alias steamrun="flatpak run com.valvesoftware.Steam"
