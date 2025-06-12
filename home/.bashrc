# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# general
alias ll='ls -la'
alias i='doas xbps-install -S'
alias ..='cd ..'

# xbps
alias u='i; doas xbps-install -u xbps; doas xbps-install -u'
alias q='doas xbps-query -Rs'
alias r='doas xbps-remove -R'

# fastfetch
alias ff='fastfetch'

# zathura
alias z='zathura'
