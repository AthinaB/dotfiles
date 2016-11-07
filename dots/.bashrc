# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
# umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
 export LS_OPTIONS='--color=auto'
# eval "`dircolors`"
 alias ls='ls $LS_OPTIONS'
 alias ll='ls $LS_OPTIONS -l'
 alias l='ls $LS_OPTIONS -lA'

# general
alias lsa='ls -a'

# If there is a file aliases use it
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

# From dgrig
# Shows git branch after path

parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \[\1\]/'
}

export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[01;32m\]\w\[\033[00m\]\[\033[36m\]$(parse_git_branch)\[\033[00m\]\$ '

# For arcanist (phabricator)
export PATH=$PATH:~/arcanist/arcanist/bin

# for git auto-completion
# the git-completion.bash file download it from:
# https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
source ~/.git-completion.bash
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh
