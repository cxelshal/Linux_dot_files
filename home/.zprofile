# ~/.zprofile - Zsh login shell configuration

# Set environment variables
export PATH="$HOME/.local/bin:/usr/local/bin:$PATH"
export EDITOR="vim"
export LANG="en_US.UTF-8"



[[ ! $DISPLAY && $(tty) = "/dev/tty1" ]] && startx

