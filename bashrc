# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

#
cd "${HOME}"

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias vi='vim'
alias c='clear'
alias SYNC="sync; sync; sync"
alias cd..="cd .."
alias cd...="cd ../.."
alias cls="clear"
alias d="dir"
alias dir="ls -l"
alias la="ls -a"
alias lla="ls -al"
alias f="finger"
alias g="grep --color=auto"
alias l="last"
alias lo="logout"
alias m="more"
alias md="mkdir"
alias psa="ps awx"
alias psm="ps -U $USER"
alias psr="psu root"
alias psu="ps -U"
alias s="screen"
alias smic="sudo env -i PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin /usr/bin/make install clean"
alias ssh="ssh -4 -C -e none -v"
alias t="telnet"

#
# export
#
export BLOCKSIZE="k"
export EDITOR="vim"
export GIT_PAGER="less"
export LESS="-EfmrSwX"
export LSCOLORS="gxfxcxdxbxegedabagacad"
export PATH="$HOME/bin:$HOME/node_modules/.bin:/usr/local/sbin:/usr/sbin:/sbin:$PATH"
export PERL_CPANM_OPT="--mirror http://cpan.nctu.edu.tw/ --mirror http://cpan.cpantesters.org/"

# tw file name wrong
LANG=zh_TW.utf8
export LANG

# donot record history of these
export HISTIGNORE="pwd:ls:ls -ltr:"

# for git status
export PATH

function git_branch {
        ref=$(git symbolic-ref HEAD 2> /dev/null) || return;
            echo "["${ref#refs/heads/}"]";
}

function git_since_last_commit {
        now=`date +%s`;
            last_commit=$(git log --pretty=format:%at -1 2> /dev/null) || return;
                seconds_since_last_commit=$((now-last_commit));
                    minutes_since_last_commit=$((seconds_since_last_commit/60));
                        hours_since_last_commit=$((minutes_since_last_commit/60));
                            minutes_since_last_commit=$((minutes_since_last_commit%60));

                                echo "${hours_since_last_commit}h${minutes_since_last_commit}m ";
}


#
# ps line
#
#PS1='\u@\h(${STY}:${WINDOW}):\w$ '
#PS1='\u@\h(W${WINDOW})[\w]$ '
#PS1='\u@\h(${STY}:%{WINDOW}):\w$ '
#PS1='\[\e[G\e[m\e[32m\]\u\[\e[m\]@\[\e[36m\]\h\[\e[m\] [\[\e[32m\]\w\[\e[m\]] [\[\e[36m\]\A\[\e[m\]/\[\e[36m\]W$WINDOW\[\e[m\]

# add git-status
#PS1='\[\e[G\e[m\e[32m\]\u\[\e[m\]@\[\e[36m\]\h\[\e[m\] [\[\e[32m\]\w\[\e[m\]] [\[\e[36m\]\A\[\e[m\]/\[\e[36m\]W${WINDOW}\[\e[m\]] \[\e[36m\]$(git_branch)\[\e[m\] '

if [ -z "$WINDOW" ]; then
    if type git_branch > /dev/null 2>&1; then
        PS1='\[\e[G\e[m\e[32m\]\u\[\e[m\]@\[\e[36m\]\h\[\e[m\] [\[\e[32m\]\w\[\e[m\]] [\[\e[36m\]\A\[\e[m\]]\[\e[1;30m\]$(git_branch)\[\e[m\] '
    else
        PS1='\[\e[G\e[m\e[32m\]\u\[\e[m\]@\[\e[36m\]\h\[\e[m\] [\[\e[32m\]\w\[\e[m\]] [\[\e[36m\]\A\[\e[m\]]\[\e[0m\] '
    fi
else
    if type git_branch > /dev/null 2>&1; then
        PS1='\[\e[G\e[m\e[32m\]\u\[\e[m\]@\[\e[36m\]\h\[\e[m\] [\[\e[32m\]\w\[\e[m\]] [\[\e[36m\]\A\[\e[m\]/\[\e[36m\]W$WINDOW\[\e[m\]]\[\e[1;30m\]$(git_branch)\[\e[m\] '
    else
        PS1='\[\e[G\e[m\e[32m\]\u\[\e[m\]@\[\e[36m\]\h\[\e[m\] [\[\e[32m\]\w\[\e[m\]] [\[\e[36m\]\A\[\e[m\]/\[\e[36m\]W$WINDOW\[\e[m\]] '
    fi
fi
