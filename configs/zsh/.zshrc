# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  # source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi
# source ${XDG_CONFIG_HOME}/zsh/.p10k2.zsh
# source ${XDG_CONFIG_HOME}/zsh/.p10k.zsh

# Created by Zap installer
# [ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
# plug "zsh-users/zsh-autosuggestions"
# plug "zap-zsh/supercharge"
# plug "zap-zsh/zap-prompt"
# plug "zsh-users/zsh-syntax-highlighting"
# plug "romkatv/powerlevel10k"
# Load and initialise completion system
# autoload -Uz compinit
# compinit

# zstyle ':vcs_info:git:*' formats '%b '
#
# setopt PROMPT_SUBST
# PROMPT='%F{green}%*%f %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ '

export PATH=$HOME/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=HOME/.local/share/nvim/mason/bin:$PATH
export PATH=HOME/.cargo/bin:$PATH
export PATH=HOME/.local/bin/java/jdk-20.0.1/bin:$PATH
export PATH=HOME/.local/bin/gradle/gradle-8.1.1/bin:$PATH
# no beeping
unsetopt BEEP
zle_highlight=('paste:none')

# Use fd (https://github.com/sharkdp/fd) instead of the default find
# command for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
# _fzf_compgen_path() {
#   fd --hidden --follow --exclude ".git" . "$1"
# }

# Use fd to generate the list for directory completion
# _fzf_compgen_dir() {
#   fd --type d --hidden --follow --exclude ".git" . "$1"
# }

# Advanced customization of fzf options via _fzf_comprun function
# - The first argument to the function is the name of the command.
# - You should make sure to pass the rest of the arguments to fzf.
# _fzf_comprun() {
#   local command=$1
#   shift
#
#   case "$command" in
#     cd)           fzf --preview 'tree -C {} | head -200'   "$@" ;;
#     export|unset) fzf --preview "eval 'echo \$'{}"         "$@" ;;
#     ssh)          fzf --preview 'dig {}'                   "$@" ;;
#     *)            fzf --preview 'bat -n --color=always {}' "$@" ;;
#   esac
# }

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# FZF config
# export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
# Use ~~ as the trigger sequence instead of the default **
# export FZF_COMPLETION_TRIGGER='~~'
# Options to fzf command
# export FZF_COMPLETION_OPTS='--border --info=inline'
# export FZF_PREVIEW='--preview "bat --style=numbers --color=always --line-range :500 {}"'
for config (~/.config/zsh/*.zsh) source $config
# source "${ZDOTDIR}/.my_aliases"
# source "${ZDOTDIR}/.my_functions"
# source ~/bin/zsh_plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source ~/bin/zsh_plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(zoxide init zsh)"
# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
# [[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k2.zsh
# [[ -f ~/.config/zsh/.p10k2.zsh ]] && source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
# source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
 # source ~/powerlevel10k/powerlevel10k.zsh-theme
if [[ -f $HOME/.config/zsh/.p10k2.zsh ]]
then
  source $HOME/.config/zsh/.p10k2.zsh
  source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
else
  echo "No file at $HOME/.config/zsh/.p10k2.zsh"
fi
