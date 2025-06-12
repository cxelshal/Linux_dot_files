# .zshrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PROMPT='%F{yellow}%D{%H:%M}%f'  # current time in yellow
PROMPT+=' > %F{green}%n@%m%f'   # username@hostname in green
PROMPT+='%F{cyan}%~%f '         # cwd in cyan
PROMPT+='%F{red}%#%f '          # root/user prompt in red



alias ls='ls --color=auto'

# general
alias ll='ls -la'
alias i='doas xbps-install -S'
alias ..='cd ..'
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip --color=auto'
alias patch='patch --color=auto'


# xbps
alias u='i; doas xbps-install -u xbps; doas xbps-install -u'
alias q='doas xbps-query -Rs'
alias r='doas xbps-remove -R'

# fastfetch
alias ff='fastfetch'

# zathura
alias z='zathura'

# store ZSH history
export HISTFILE=~/.zsh_history
export HISTSIZE=1000
export SAVEHIST=1000

