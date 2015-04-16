[[ -s "/usr/local/rvm/scripts/rvm" ]] && . "/usr/local/rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH=$PATH":$HOME/dotfiles/bin"

source ~/dotfiles/.git-completion.sh

function _update_ps1() {
 export PS1="$(~/powerline-shell.py --cwd-max-depth 3 $? 2> /dev/null)"
}

export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"

export JAVA_HOME=$(/usr/libexec/java_home)

alias svnfstat='svn st --ignore-externals | grep -v X'
