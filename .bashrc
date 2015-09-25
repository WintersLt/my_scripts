if [ -f ~/.alias.bekaar ]; then
      source ~/.alias.bekaar   # --> Read alias file
fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export GIT_SSL_NO_VERIFY=1

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
source '/home/bekaar/.rvm/scripts/rvm'
