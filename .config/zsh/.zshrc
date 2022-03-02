HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.cache/zsh/history

# oh-my-zsh configuration
export ZSH="${XDG_CONFIG_HOME}/oh-my-zsh"
#ZSH_THEME="jonathan"
ZSH_THEME="agnoster"
source $ZSH/oh-my-zsh.sh
plugins=(git)


setopt appendhistory autocd beep extendedglob null_glob glob_subst
unsetopt glob_subst
bindkey -e
#PROMPT='%F{blue}%1~%f %# '

[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/shortcutrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/shortcutrc"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/zshnameddirrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/zshnameddirrc"

[ -e /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] \
	&& source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 

[ -e /home/yankas/.opam/opam-init/init.zsh ] && source /home/yankas/.opam/opam-init/init.zsh > /dev/null 
[ -e "$XDG_CONFIG_HOME/zsh/.zshrc.local" ] && source "$XDG_CONFIG_HOME/zsh/.zshrc.local"
