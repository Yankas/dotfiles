HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.cache/zsh/history

setopt appendhistory autocd beep extendedglob
bindkey -e
set -o GLOB_SUBST
PROMPT='%F{blue}%1~%f %# '

[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/shortcutrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/shortcutrc"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/zshnameddirrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/zshnameddirrc"

source $HOME/.config/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[ $(hostname) = absm-devel ] ?? source zshrc.mdevel 
[ $(hostname) = mbpcts-dock.berlin.abs-rz.de ] ?? source zshrc.macos
