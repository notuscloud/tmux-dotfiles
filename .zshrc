export ZSH=$HOME/.oh-my-zsh
#export ZSH_THEME="powerlevel9k/powerlevel9k"

export ZSH_THEME="agnoster"
#
# PowerLevel customization
#POWERLEVEL9K_PROMPT_ON_NEWLINE=true
#POWERLEVEL9K_RPROMPT_ON_NEWLINE=false
#POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
#POWERLEVEL9K_COLOR_SCHEME='dark'
#POWERLEVEL9K_TIME_BACKGROUND='green'
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir rbenv vcs)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time battery)
#POWERLEVEL9K_MODE="nerdfont-patched"
#POWERLEVEL9K_MODE="awesome-patched"

# VCS icons
#POWERLEVEL9K_VCS_GIT_ICON=$'\uf1d3'
#POWERLEVEL9K_VCS_GIT_GITHUB_ICON=$'\uf113'

#POWERLEVEL9K_SHORTEN_DIR_LENGTH=2

plugins=(git brew osx extract z docker docker-compose kubectl terraform kops vault consul)

# Uncomment the following line to disable auto-setting terminal title.
#export DISABLE_AUTO_TITLE="true"

SHELLPROMPT=~/.shell_prompt.sh ; [ -f $SHELLPROMPT ] && source $SHELLPROMPT

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
EXTRA=~/extra.sh ; [ -f $EXTRA ] && source $EXTRA

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/vault vault

complete -o nospace -C /usr/local/bin/consul consul
