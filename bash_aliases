alias sudo='sudo '
#Colorize Bash
PS1='\e[36;1m\u:\e[31m\w\e[0m=\e]'
PS1="\[\033[38;5;6m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]:\[$(tput sgr0)\]\[\033[38;5;1m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
# PS1='\\u@\h \\W]\\$'
command_exists () {
    type "$1" &> /dev/null ;
}

ALIASES_HOME=$HOME

source $ALIASES_HOME/.aliases/bash/apache_aliases
source $ALIASES_HOME/.aliases/bash/cli_aliases
source $ALIASES_HOME/.aliases/bash/git_aliases
source $ALIASES_HOME/.aliases/bash/github_aliases
source $ALIASES_HOME/.aliases/bash/composer_aliases
source $ALIASES_HOME/.aliases/bash/symfony_aliases
source $ALIASES_HOME/.aliases/bash/phpunit_aliases
source $ALIASES_HOME/.aliases/bash/cordova_aliases
source $ALIASES_HOME/.aliases/bash/django_aliases
source $ALIASES_HOME/.aliases/bash/npm_aliases
source $ALIASES_HOME/.aliases/bash/loopback_aliases
source $ALIASES_HOME/.aliases/bash/gulp_aliases
source $ALIASES_HOME/.aliases/bash/my_aliases
source $ALIASES_HOME/.aliases/bash/kubernetes_aliases
