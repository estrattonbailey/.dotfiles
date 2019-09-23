if test -f "~/.bash_env.sh"; then
  source ~/.bash_env.sh
fi
if test -f "~/.bash_local"; then
  source ~/.bash_local
fi

alias ls='ls -la'
alias ll="ls -la"

alias temp="pmset -g therm"

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="/usr/local/opt/postgresql@10/bin:$PATH"
