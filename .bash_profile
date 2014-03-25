[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=$PATH":$HOME/dotfiles/bin"

source ~/dotfiles/.git-completion.sh

function _update_ps1() {
 export PS1="$(~/powerline-shell.py --cwd-max-depth 3 $? 2> /dev/null)"
}

export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
