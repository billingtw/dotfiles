# or use `pwd`. ex: ln -fs `pwd`/vim ~/.vim
#
# makefile need [tab] to start a line
#
init:
	ln -fs `pwd`/vimrc ~/.vimrc
	ln -fs `pwd`/vim ~/.vim
	ln -fs `pwd`/bashrc ~/.bashrc
	ln -fs `pwd`/bash_profile ~/.bash_profile
	ln -fs `pwd`/cshrc ~/.cshrc
	ln -fs `pwd`/gitconfig ~/.gitconfig
	source ~/.bashrc
