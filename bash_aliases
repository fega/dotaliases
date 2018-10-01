alias sudo='sudo '
#Colorize Bash
PS1="\[\033[38;5;6m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]:\[$(tput sgr0)\]\[\033[38;5;1m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
command_exists () {
    type "$1" &> /dev/null ;
}

# ALIASES_HOME=$HOME
ALIASES_HOME=~/projects/fega01/aliases
export PATH="~/Library/Android/sdk/platform-tools":$PATH

source $ALIASES_HOME/bash/apache_aliases
source $ALIASES_HOME/bash/cli_aliases
source $ALIASES_HOME/bash/git_aliases
source $ALIASES_HOME/bash/github_aliases
source $ALIASES_HOME/bash/composer_aliases
source $ALIASES_HOME/bash/symfony_aliases
source $ALIASES_HOME/bash/phpunit_aliases
source $ALIASES_HOME/bash/cordova_aliases
source $ALIASES_HOME/bash/django_aliases
source $ALIASES_HOME/bash/npm_aliases
source $ALIASES_HOME/bash/loopback_aliases
source $ALIASES_HOME/bash/gulp_aliases
source $ALIASES_HOME/bash/my_aliases
source $ALIASES_HOME/bash/kubernetes_aliases
