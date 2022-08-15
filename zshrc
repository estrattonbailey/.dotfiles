if [[ ! -a ~/.zsh_env_local.zsh ]]; then
  . ~/.zsh_env_local.zsh
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias ls='ls -la'
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH=/usr/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH="/opt/homebrew/bin:$PATH" # hombrew first

# ruby
# export GEM_HOME=$HOME/.gem
# export PATH=$GEM_HOME/bin:$PATH

# android
export ANDROID_HOME=$HOME/Library/Android/sdk
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
