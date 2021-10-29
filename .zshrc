#if [ -f ~/.bash_profile ]; then 
#    . ~/.bash_profile;
#fi


alias ls='ls --color'
alias ls='ls -G'

export CLICOLOR=1

# bash version:
# export PS1="\u@\h:\[\e[33m\]\w\[\e[0m\]\$ "

# zsh port:
export PS1=$'%n@%m:\e[36m%~\e[0m$ '

# export BASH_SILENCE_DEPRECATION_WARNING=1
# eval "$(/opt/homebrew/bin/brew shellenv)"
export EDITOR=nvim


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
