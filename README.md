Dot Files
=========

Collection of configuration files used in my home folder of Linux systems.


Installation
------------

To clone with the submodules:
cd $HOME
git clone --recursive https://github.com/dablak/dotfiles.git

Backup your dotfiles:
mv .bashrc .bashrc_bckp
mv .bash_aliases .bash_aliases_bckp
mv .vim .vim_bckp
mv .vimrc .vimrc_bckp

Create symbolic links:
ln -ns dotfiles/bashrc .bashrc
ln -ns dotfiles/bashrc_aliases .bash_aliases
ln -ns dotfiles/vim .vim
ln -ns dotfiles/vim/vimrc .vimrc
