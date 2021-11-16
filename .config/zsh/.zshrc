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

source /Users/cts/.config/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh