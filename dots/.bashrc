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
#
# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'

# Alias for admin UI

# Go to the folder of the static files of admin in *synnefo*
alias cd-snf-static='cd ~/synnefo/snf-admin-app/synnefo_admin/admin/static/'

# Go to the folder of the static files of admin in *usr/share*
alias cd-share-static='cd ~/../usr/share/synnefo/static/admin'

alias cp2snf='cp -r ~/../usr/share/synnefo/static/admin ~/synnefo/snf-admin-app/synnefo_admin/admin/static'
alias cp2share='cp -r ~/synnefo/snf-admin-app/synnefo_admin/admin/static/ ~/../usr/share/synnefo/static/admin'
alias rm-share-static='rm -r ~/../usr/share/synnefo/static/admin/'
alias rm-snf-static='rm -r ~/synnefo/snf-admin-app/synnefo_admin/admin/static'


# Alias for Ember UI

alias cd-ui-web="cd ~/synnefo/snf-ui-app/ui-web/"
alias run-ember='ember build --output-path="/usr/share/synnefo/static/ui/" --watch'

# Alias for snf-ui repo (new pithos)
alias cd-snf-ui='cd /var/tmp/snf-ui-app/snf-ui/'
alias run-ember='ember build --watch --output-path ../synnefo_ui/static/snf-ui'


# Alias for tmux cmds

alias tmux-new='tmux new -s'
alias tmux-attach='tmux attach-session -t'


# From dgrig
# Shows git branch after path

parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \[\1\]/'
}

export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[01;32m\]\w\[\033[00m\]\[\033[36m\]$(parse_git_branch)\[\033[00m\]\$ '

# For arcanist (phabricator)
export PATH=$PATH:~/arcanist/arcanist/bin
