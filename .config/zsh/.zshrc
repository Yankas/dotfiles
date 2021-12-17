HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.cache/zsh/history

setopt appendhistory autocd beep extendedglob null_glob glob_subst
unsetopt glob_subst
bindkey -e
PROMPT='%F{blue}%1~%f %# '

[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/shortcutrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/shortcutrc"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/zshnameddirrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/zshnameddirrc"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[[ ! -r /home/yankas/.opam/opam-init/init.zsh ]] || source /home/yankas/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

[ $(hostname) = absm-devel ] && source $XDG_CONFIG_HOME/zsh/zshrc.mdevel 
[ $(hostname) = mbpcts-dock.berlin.abs-rz.de ] && source $XDG_CONFIG_HOME/zsh/zshrc.macos
