#!/bin/zsh
# Aliases...
alias c='clear'
alias up='cd ..'
alias e='$EDITOR'

# We're using lsd! The colors!
if [ -x "$(command -v lsd)" ]; then
    alias l='lsd -la'
    alias ls='lsd'
    alias ll='lsd -l'
    alias la='lsd -la'
else
  k
    alias l='ls -la'
    alias ls='ls'
    alias ll='ls -l'
    alias la='ls -la'
fi
alias makeEx='chmod u+x *.sh'
alias cls='clear'
# aliases from Elijah Manor's dotfiles
alias weather="curl -4 wttr.in/derby"
alias vim="nvim"
alias vimrcs="source ~/.config/nvim/init.lua"
alias tmuxrc="vim ${DOTFILES}/tmux/.config/tmux/tmux.conf"
alias tmuxrcs="tmux source-file ${DOTFILES}/tmux/.config/tmux/tmux.conf"
# TODO: Does this command need any other arguments (e.g. session number?)
alias retmux='tmux attach'
alias beep='echo -e "\a"'
alias dev='printf "%s\n" "${dev_commands[@]}" | fzf --height 20% --header Commands | xargs bash'
alias example='f() { echo Your arg was $1. };f'
alias python=/usr/bin/python3
alias lastFile='ls -t | head -n1'
alias nrun='npm run dev'
alias gs='git status'
# Alias: ipinfo
# Info: Look up your IP info. This also shows geolocation and ISP information. This returns a JSON response.
alias ipinfo='curl ipinfo.io'
alias myip="curl http://ipecho.net/plain; echo"
