function _update_ps1() {
 export PS1="$(powerline-shell $?)"
}

alias pg-start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias pg-stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
export HISTFILESIZE=-1

export PATH="$HOME/.dotfiles/bin:$(yarn global bin):$HOME/.fastlane/bin:$HOME/.cargo/bin:/workspace/php/Gitify/:$PATH"
export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
eval "$(direnv hook bash)"

## Aliases
alias cartboot='carthage bootstrap --platform iOS'
export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"

alias tcr="dotnet test && commit -m || git reset --hard"
