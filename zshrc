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
