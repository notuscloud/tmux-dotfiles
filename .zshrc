ZSH=$HOME/.oh-my-zsh

#ZSH_THEME="agnoster"
ZSH_THEME="powerlevel9k/powerlevel9k"

plugins=(git brew osx extract z docker docker-compose kubectl)

# Uncomment the following line to disable auto-setting terminal title.
export DISABLE_AUTO_TITLE="true"

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
EXTRA=~/extra.sh ; [ -f $EXTRA ] && source $EXTRA
SHELLPROMPT=~/.shell_prompt.sh ; [ -f $SHELLPROMPT ] && source $SHELLPROMPT
EDITOR=vim
export KUBE_EDITOR="vim" 

export GIT_EDITOR=vim
export GOPATH=~/Workspace/Go

# Aliases
#alias go='docker run -ti --rm -v ${GOPATH}:/go golang go'
#alias kuboot='docker run -ti --rm -v ${GOPATH}:/go golang bin/kuboot'
alias kuboot-build='docker run -ti --rm -v ${GOPATH}:/go golang ./build-darwin.sh'
alias watch='watch '

# terraform aliases
#alias terraform_latest='docker run -ti --rm -v $(pwd):/app/ -w /app hashicorp/terraform' 
#alias terraform='docker run -ti --rm -v $(pwd):/app/ -w /app hashicorp/terraform:0.10.7' 

source .zsh-additional.sh
