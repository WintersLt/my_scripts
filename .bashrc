if [ -f ~/.alias.bekaar ]; then
      source ~/.alias.bekaar   # --> Read alias file
fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export GIT_SSL_NO_VERIFY=1

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
source '/home/bekaar/.rvm/scripts/rvm'

export PS1="${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u-\[\033[01;34m\] \W \$\[\033[00m\]"
export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64

#for github
unset SSH_ASKPASS
