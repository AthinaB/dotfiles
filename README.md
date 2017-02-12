dotfiles
=========

Experimenting with dotfiles

This repo has the files that are included in ~/.dotfiles/

There is a subdirectory named dots/ which has all the dotfiles that are used for configuration.

Also, it has a subdirectory named .vim/ which has all the necessary vim stuff except .vimrc file (this is included in dots dir)

So, in every new installation these things should be done:
```
git clone https://github.com/AthinaB/dotfiles.git ~/.dotfiles
ln -s ~/.dotfiles/dots/.* .
ln -s ~/.dotfiles/aliases/.* .
ln -s ~/.dotfiles/.vim/ .
source .zshrc
cd .vim
git submodule init
git submodule update
```
