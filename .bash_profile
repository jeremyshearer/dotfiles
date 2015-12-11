[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" #
export PATH="/usr/local/sbin:$PATH"
export PATH=$PATH":$HOME/bin:$HOME/dotfiles/bin"

source ~/dotfiles/.git-completion.sh

function _update_ps1() {
 export PS1="$(~/powerline-shell.py --cwd-max-depth 3 $? 2> /dev/null)"
}

export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
export JAVA_HOME=$(/usr/libexec/java_home)

alias svnfstat='svn st --ignore-externals | grep -v X'

eval "$(direnv hook bash)"
alias dockenv='eval "$(docker-machine env default)"'
eval "$(docker-machine env default)"
