alias ls='ls --color -G'

export CLICOLOR=1
export PS1="\u@\h:\[\e[36m\]\w\[\e[0m\]\$ "
export BASH_SILENCE_DEPRECATION_WARNING=1
eval "$(/opt/homebrew/bin/brew shellenv)"
export EDITOR=nvim

alias vim=nvim
alias vi=nvim

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
