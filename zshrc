if [[ ! -a ~/.zsh_env_local.zsh ]]; then
  . ~/.zsh_env_local.zsh
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias ls='ls -la'
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH=/usr/local/bin:$PATH

# pyenv @see https://realpython.com/intro-to-pyenv/
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# see https://github.com/truework/truework-frontend-api/blob/99a0b10a188efff8a980220272115053f2e61c4d/README.md#set-your-zethos-env-by-adding-this-to-zshrc-bashrc-or-bash_profile
export ZETHOS_ENV=DEV
export DD_TRACE_ENABLED=0
export DD_TRACE_STARTUP_LOGS=0

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

export PATH="$HOME/.poetry/bin:$PATH"
