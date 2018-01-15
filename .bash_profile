export PATH="./node_modules/.bin:/usr/local/sbin:/usr/local/bin:$PATH:$HOME/bin:$HOME/dotfiles/bin"

source ~/dotfiles/.git-completion.sh

function _update_ps1() {
 export PS1="$(powerline-shell $?)"
}

#export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
export HOMEBREW_GITHUB_API_TOKEN=17bfb291bc5aed7f15c5e25007eeb19e19d07cde
export NVM_DIR="$HOME/.nvm"

. "$(brew --prefix nvm)/nvm.sh"
eval "$(direnv hook bash)"
eval "$(rbenv init -)"
