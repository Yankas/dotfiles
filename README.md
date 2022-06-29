# Personal Dotfiles
## Installing Dotfiles

```bash
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/Yankas/dotfiles.git $HOME/myconf-tmp
#cp ~/myconf-tmp/.gitmodules ~  # If you use Git submodules
cp -r $HOME/myconf-tmp/{.,}* ~
rm -r ~/myconf-tmp/
alias cfg='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
cfg config status.showUntrackedFiles no
```

cfg can now be used like git i.E.
```sh
cfg status
cfg commit -m "foo" 
etc ...
```

