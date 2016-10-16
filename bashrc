# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias vi='vim'
alias c='clear'

# tw file name wrong
LANG=zh_TW.utf8
export LANG

# donot record history of these
export HISTIGNORE="pwd:ls:ls -ltr:"

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
