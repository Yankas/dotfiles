


Restore Settings

git clone --separate-git-dir=$HOME/.dotfiles /path/to/repo $HOME/myconf-tmp
cp ~/myconf-tmp/.gitmodules ~  # If you use Git submodules
rm -r ~/myconf-tmp/
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'