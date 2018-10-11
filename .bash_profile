source ~/.oh-my-git/prompt.sh
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

eval "$(rbenv init -)"

####################
# Git Branch Color #
####################
#
# function parse_git_branch () {
#  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
# }
#
# RED="\[\033[0;31m\]"
# YELLOW="\[\033[0;33m\]"
# GREEN="\[\033[0;32m\]"
# NO_COLOR="\[\033[0m\]"
#
# PS1="$GREEN\u@\h$NO_COLOR:\w$YELLOW\$(parse_git_branch)$NO_COLOR\$ "

###########
# Aliases #
###########

alias processAllManifests='./gradlew :app:processReplicaLaPresseStagingManifest :app:processReplicaLaPresseDebugManifest :app:processReplicaLaPresseReleaseManifest :app:processAdPreflightLaPresseDebugManifest :app:processAdPreflightLaPresseStagingManifest :app:processAdPreflightLaPresseReleaseManifest'
searchAllManifests () {
  kw="${1:package}"
  before=${2:0}
  after=${3:0}
  find . -type f -regex ".*\.xml" -exec grep -B $before -A $after $kw {} +
}

g="./gradlew"
