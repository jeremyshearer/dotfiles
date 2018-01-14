source ~/.dotfiles/.git-completion.sh

function _update_ps1() {
 export PS1="$(powerline-shell $?)"
}

export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
#export JAVA_HOME=$(/usr/libexec/java_home)
#export M2_HOME="/usr/local/Cellar/maven/3.3.9/libexec"

eval "$(direnv hook bash)"
#alias dockenv='eval "$(docker-machine env default)"'
#eval "$(docker-machine env default)"
