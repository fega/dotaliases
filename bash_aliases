# alias sudo='sudo '
echo "Bash Aliases loaded"

# ALIASES_HOME=$HOME
export ALIASES_HOME="/c/Users/zbook/OneDrive/Escritorio/dotaliases/";
# export PATH="~/Library/Android/sdk/platform-tools":$PATH

# path of this file
# usage: echo alias="XXXXXX" >> savealias

savealias(){
  ALIAS_FILE="$ALIASES_HOME/bash/ephemeral_aliases"
  echo "Saving alias '$@' in $ALIAS_FILE"
  echo "Alias Name?"
  read ALIAS_NAME
  echo "alias $ALIAS_NAME=\"$@\"" >> $ALIAS_FILE
  source ~/.zshrc
}

# source $ALIASES_HOME/bash/apache_aliases
source $ALIASES_HOME/bash/cli_aliases
source $ALIASES_HOME/bash/npm_aliases
source $ALIASES_HOME/bash/my_aliases
source $ALIASES_HOME/bash/attlasian_aliases
source $ALIASES_HOME/bash/git_aliases
source $ALIASES_HOME/bash/ephemeral_aliases
source $ALIASES_HOME/bash/aws_aliases
source $ALIASES_HOME/bash/og_stuff.sh
# source $ALIASES_HOME/bash/github_aliases
# source $ALIASES_HOME/bash/composer_aliases
# source $ALIASES_HOME/bash/symfony_aliases
# source $ALIASES_HOME/bash/phpunit_aliases
# source $ALIASES_HOME/bash/cordova_aliases
# source $ALIASES_HOME/bash/django_aliases
# source $ALIASES_HOME/bash/loopback_aliases
# source $ALIASES_HOME/bash/gulp_aliases
# source $ALIASES_HOME/bash/kubernetes_aliases
