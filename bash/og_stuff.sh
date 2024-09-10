# File to store variables
EAM_CLIENT_VARS_FILE="$HOME/.eam_client_vars"

# Load the stored variables if the file exists
if [ -f "$EAM_CLIENT_VARS_FILE" ]; then
  source "$EAM_CLIENT_VARS_FILE"
else
  # Initialize default values if the file doesn't exist
  EAM_CLIENT_LAST_CHECK_TIME=0
  EAM_CLIENT_VERSION="unknown"
fi

EAM_CLIENT_CURRENT_TIME=$(date +%s)  # Current time in seconds since the epoch
EAM_CLIENT_TWO_HOURS_IN_SECONDS=$((2 * 60 * 60))

# Check if 2 hours have passed since the last check
EAM_CLIENT_TIME_DIFF=$((EAM_CLIENT_CURRENT_TIME - EAM_CLIENT_LAST_CHECK_TIME))

if [ "$EAM_CLIENT_TIME_DIFF" -lt "$EAM_CLIENT_TWO_HOURS_IN_SECONDS" ]; then
  # Use the cached version if less than 2 hours have passed
  echo "Using cached eam client version: $EAM_CLIENT_VERSION"
else
  # Placeholder value during loading
  EAM_CLIENT_VERSION="loading..."
  echo "Fetching new eam client version..."
  EAM_CLIENT_VERSION=$(get-eam-client-version)

  # Update the variables and store them persistently
  EAM_CLIENT_LAST_CHECK_TIME=$EAM_CLIENT_CURRENT_TIME
  echo "EAM_CLIENT_LAST_CHECK_TIME=$EAM_CLIENT_LAST_CHECK_TIME" > "$EAM_CLIENT_VARS_FILE"
  echo "EAM_CLIENT_VERSION=\"$EAM_CLIENT_VERSION\"" >> "$EAM_CLIENT_VARS_FILE"
  echo "Fetched new eam client version: $EAM_CLIENT_VERSION"
fi

# get the major version
EAM_CLIENT_MAJOR_VERSION=$(echo $EAM_CLIENT_VERSION | cut -d. -f1)

#
# OPENGOV ALIASES
#
alias cdopengov='cd ~/projects/opengov';
alias cdopengovbe='cd ~/projects/opengov/backend';
alias cropengov='open -a "Google Chrome" -n --args --profile-directory="Profile 9" $(pbpaste)'
alias cdogclient='cd ~/projects/eam-client/'
alias cdogserver='cd ~/projects/eam-server/'
alias cdogservercore='cd ~/projects/eam-server/OMS/EAMServer'
# accessiblity pr
alias ghaccesspr='gh pr create --reviewer MickeyBeignets --label eam-rd --label accessibility --assignee @me'

function ngcomponent() {
    ng g c --prefix=cg ./shared/components/$1 
}
function ngpage() {
    ng g c --prefix=cg ./pages/$1 
}

function ngcomponentcapital() {
    ng g c --prefix=cg ./shared/components/capital/$1 
}
function ngpage(){
    ng g c --prefix=cg ./pages/$1
}

function ogpr(){
    # if branch name starts with `chore` add --label no-changelog to commit
    BRANCH_NAME=$(git rev-parse --abbrev-ref HEAD)
    
    if [[ $BRANCH_NAME == chore* ]]; then
        TITLE=$(echo $BRANCH_NAME | sed -E 's/chore\/([A-Z]+-[0-9]+)\/(.+)/chore: [\1] \2/')
    elif [[ $BRANCH_NAME == feat* ]]; then
        TITLE=$(echo $BRANCH_NAME | sed -E 's/feat\/([A-Z]+-[0-9]+)\/(.+)/feat: [\1] \2/')
    elif [[ $BRANCH_NAME == fix* ]]; then
        TITLE=$(echo $BRANCH_NAME | sed -E 's/fix\/([A-Z]+-[0-9]+)\/(.+)/fix: [\1] \2/')
    else
        # throw error
        exit 1
    fi

    if [[ $BRANCH_NAME == chore* ]]; then
        gh pr create --label eam-rd --assignee @me --reviewer mmagni-opengov --reviewer plussenhoff --reviewer guillemurano --reviewer hurbanOG --label no-changelog --title "$TITLE"
    else
        gh pr create --label eam-rd --assignee @me --reviewer mmagni-opengov --reviewer plussenhoff --reviewer guillemurano --reviewer hurbanOG --title "$TITLE"
    fi
}

alias ogprlabel='gh label create --color "#E311ED" eam-rd'
