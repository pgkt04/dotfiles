# ~/.zshrc

# Colours & aliases
alias ls='ls --color -G'
export CLICOLOR=1

# Prompt: cyan working dir, normal "$"
PROMPT='%n@%m:%F{cyan}%~%f$ '

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Editor & helpers
export EDITOR=nvim
alias vim=nvim
alias vi=nvim
alias lg=lazygit

# PATH additions (zsh array style)
path+=(
  /usr/local/share/dotnet/x64
  /opt/homebrew/opt/openjdk/bin
  /opt/homebrew/opt/ruby/bin
  /opt/homebrew/lib/ruby/gems/3.3.0/bin
  "$HOME/.amplify/bin"
  "$HOME/.nvm"
  "$HOME/.local/share/solana/install/active_release/bin"
)

# NVM (Node Version Manager)
export NVM_DIR="$HOME/.nvm"
[[ -s "/opt/homebrew/opt/nvm/nvm.sh" ]] && source "/opt/homebrew/opt/nvm/nvm.sh"
[[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ]] && source "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"

# Rust / Cargo
[[ -f "$HOME/.cargo/env" ]] && source "$HOME/.cargo/env"

# zsh completion setup
autoload -Uz compinit && compinit          # native zsh completions
autoload -Uz bashcompinit && bashcompinit  # reuse bash completion scripts
