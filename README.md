# Personal Dotfiles
## Installing Dotfiles

```bash
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/Yankas/dotfiles.git $HOME/myconf-tmp
#cp ~/myconf-tmp/.gitmodules ~  # If you use Git submodules
rm -r ~/myconf-tmp/
alias git-cfg='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
git-cfg config status.showUntrackedFiles no
```

git-cfg can now be used like git i.E.
```sh
git-cfg status
git-cfg commit -m "foo" 
etc ...
```

