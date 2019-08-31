#
# setup Vundle - plugins manager for vim
#
sudo apt-get install git curl
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

# or use `pwd`. ex: ln -fs `pwd`/vim ~/.vim
#
# makefile need [tab] to start a line
#

# source
init:
	ln -fs `pwd`/vimrc ~/.vimrc
	ln -fs `pwd`/vim ~/.vim
	ln -fs `pwd`/bashrc ~/.bashrc
	ln -fs `pwd`/bash_profile ~/.bash_profile
	ln -fs `pwd`/cshrc ~/.cshrc
	ln -fs `pwd`/gitconfig ~/.gitconfig
	ln -fs `pwd`/screenrc ~/.screenrc
    src
