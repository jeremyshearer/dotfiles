[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" #

export PATH=$PATH":$HOME/dotfiles/bin"

source ~/dotfiles/.git-completion.sh

function _update_ps1() {
 export PS1="$(~/powerline-shell.py --cwd-max-depth 3 $? 2> /dev/null)"
}

export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"

export JAVA_HOME=$(/usr/libexec/java_home)
export M2_HOME="/opt/local/share/java/maven3"

alias svnfstat='svn st --ignore-externals | grep -v X'

export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

alias postgres_start='sudo /opt/local/etc/LaunchDaemons/org.macports.postgresql93-server/postgresql93-server.wrapper start';
alias postgres_stop='sudo /opt/local/etc/LaunchDaemons/org.macports.postgresql93-server/postgresql93-server.wrapper stop';
alias postgres_restart='sudo /opt/local/etc/LaunchDaemons/org.macports.postgresql93-server/postgresql93-server.wrapper restart';
