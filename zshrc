if [[ ! -a ~/.zsh_env_local.zsh ]]; then
  . ~/.zsh_env_local.zsh
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias ls='ls -la'
export PATH=/usr/bin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH="/opt/homebrew/bin:$PATH" # hombrew first

# ruby
#export PATH=/Users/estrattonbailey/.gem/bin:$PATH
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
# export GEM_HOME=$HOME/.gem
# export PATH=$GEM_HOME/bin:$PATH
# export PATH=/Users/estrattonbailey/.rvm/gems/ruby-3.2.1/bin:$PATH
# export LDFLAGS="-L/usr/local/opt/ruby/lib"
# export CPPFLAGS="-I/usr/local/opt/ruby/include"

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

# pnpm
export PNPM_HOME="/Users/estrattonbailey/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"
export PATH=$PATH:$HOME/.maestro/bin

# For expo
# https://docs.expo.dev/guides/local-app-development/#android
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home

export POETRY_HOME=$HOME/.local/bin/poetry
export PATH=$POETRY_HOME:$PATH
