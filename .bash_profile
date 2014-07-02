[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=$PATH":/opt/local/lib/mariadb/bin":
# Finished adapting your PATH environment variable for use with MacPorts.
export PATH=$PATH":$HOME/dotfiles/bin"
export PATH=$PATH"::$HOME/bin/vault-cli-2.4.34/bin"

source ~/dotfiles/.git-completion.sh

function _update_ps1() {
 export PS1="$(~/powerline-shell.py --cwd-max-depth 3 $? 2> /dev/null)"
}

export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"

export JAVA_HOME=$(/usr/libexec/java_home)

alias svnfstat='svn st --ignore-externals | grep -v X'
