#█▓▒░ clean home
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_DATA_HOME="$HOME"/.local/share
export XDG_CACHE_HOME="$HOME"/.local/cache
export XDG_STATE_HOME="$HOME"/.local/state
export XDG_RUNTIME_DIR="${XDG_RUNTIME_DIR:=/tmp}"
export ZDOTDIR="$HOME"/.config/zsh
export DOTFILES="$HOME"/dotfiles-starter-kit

#█▓▒░ paths
# export PATH=/usr/sbin:/usr/local/sbin:$HOME/.local/bin:$CARGO_HOME/bin:$GOPATH/bin:$NPM_CONFIG_PREFIX/bin:$TFENV/bin:$XDG_DATA_HOME/nvim/mason/bin:$PATH

export PATH=/usr/sbin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$XDG_CONFIG_HOME/bin:$PATH
export PATH=$CARGO_HOME/bin:$PATH
export PATH=$GOPATH/bin:$PATH
export PATH=$NPM_CONFIG_PREFIX/bin:$PATH
export PATH=$XDG_DATA_HOME/nvim/mason/bin:$PATH
export PATH=$TFENV/bin:$PATH
export PATH=$HOME/.local/share/nvim/mason/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/.local/bin/java/jdk-20.0.1/bin:$PATH
export PATH=$HOME/.local/bin/gradle/gradle-8.1.1/bin:$PATH
[ -z ${WSLENV+x} ] || export PATH="${PATH:+"$PATH:"}$HOME/bin/win-bash-xclip-xsel"

#█▓▒░ man
export MANPAGER='nvim --cmd ":lua vim.g.noplugins=1" +Man!'
export MANWIDTH=999

#█▓▒░ preferred text editor
export EDITOR=nvim
export VISUAL=nvim

#█▓▒░ fzf & clipboard menu
export CM_LAUNCHER="fzf"
# export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS' --color=fg:#c1c1c1,bg:#2b2b2b,hl:#78824B --color=fg+:#ffffff,bg+:#1c1c1c,hl+:#C9A554 --color=info:#5f875f,prompt:#5f875f,pointer:#78824B --color=marker:#78824B,spinner:#78824B,header:#78824B --color=gutter:#2b2b2b,border:#222222 --padding=1 --prompt=❯ --marker=❯ --pointer=❯ --reverse'

#█▓▒░ language
export LC_COLLATE=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_MESSAGES=en_US.UTF-8
export LC_MONETARY=en_US.UTF-8
export LC_NUMERIC=en_US.UTF-8
export LC_TIME=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LESSCHARSET=utf-8

#█▓▒░ no mosh titles
export MOSH_TITLE_NOPREFIX=1

#█▓▒░ gpg cli in the tty
GPG_TTY=$(tty)
export GPG_TTY
# launch windows chrome from wsl
export BROWSER='/mnt/c/Program Files (x86)/Google/Chrome/Application/chrome.exe' 
