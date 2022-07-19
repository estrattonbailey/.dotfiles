if [[ ! -a ~/.zsh_env_local.zsh ]]; then
  . ~/.zsh_env_local.zsh
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias ls='ls -la'
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH=/usr/bin:$PATH
export PATH=/usr/local/bin:$PATH

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
