source ~/.bash_env.sh
source ~/.bash_local

alias ls='ls -la'
alias ll="ls -la"

alias temp="pmset -g therm"

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="/usr/local/opt/postgresql@10/bin:$PATH"

export PATH="/usr/local/opt/ruby/bin:$PATH"
. "$HOME/.cargo/env"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH=$PATH:$HOME/.maestro/bin
