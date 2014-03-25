[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

##
# Your previous /Users/mohican/.bash_profile file was backed up as /Users/mohican/.bash_profile.macports-saved_2013-12-21_at_11:30:07
##

# MacPorts Installer addition on 2013-12-21_at_11:30:07: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export PATH=$PATH":$HOME/dotfiles/bin"

# source ~/dotfiles/git-prompt/git-prompt.sh
source ~/dotfiles/.git-completion.sh


# PS1="\[\033[0;34m\]\u\[\033[0;33m\]\w\[\033[m\]\[$MAGENTA\]\$(__git_ps1)\[\033[0;37m\]\$ "

function _update_ps1() {
   export PS1="$(~/powerline-shell.py $? 2> /dev/null)"
}

export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"

# export JAVA_HOME=$(/usr/libexec/java_home)
# export JAVA_WORKSPACE="/Users/mohican/Sites/java/**/*.java"
# export HAMCREST_HOME="/opt/local/share/java/hamcrest-core.jar"
# export JUNIT_HOME="/opt/local/share/java/junit.jar"
# export CLASSPATH="$CLASSPATH:$HAMCREST_HOME:$JUNIT_HOME:$JAVA_WORKSPACE"]
