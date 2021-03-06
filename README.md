# Dot Files

Collection of configuration files used in my home folder of Linux systems.

## Installation

To clone with the submodules:
```
sudo apt-get update && sudo apt-get install -y git python-pip python-dev build-essential 
cd $HOME  
git clone --recursive https://github.com/dablak/dotfiles.git
```

Backup your dotfiles:
```
mv .bashrc .bashrc_bckp  
mv .bash_aliases .bash_aliases_bckp  
mv .vim .vim_bckp  
mv .vimrc .vimrc_bckp
mv .screenrc .screenrc_bckp
mv .inputrc .inputrc_bckp
```

Create symbolic links:
```
ln -ns dotfiles/.bashrc .bashrc 
ln -ns dotfiles/.bash_aliases .bash_aliases 
ln -ns dotfiles/vim .vim 
ln -ns dotfiles/vim/.vimrc .vimrc
ln -ns dotfiles/.screenrc .screenrc
ln -ns dotfiles/.inputrc .inputrc
```
