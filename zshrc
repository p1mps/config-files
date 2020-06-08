# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="bira"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want disable red dots displayed while waiting for completion
# DISABLE_COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx lein zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

#source "/Users/p1mps/.sdkman/bin/sdkman-init.sh"

#export PATH="$(brew --prefix homebrew/php/php54)/bin:$PATH"
case `uname` in
  Darwin)
      # commands for OS X go here
      export EDITOR="/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -c"
      alias e="/Applications/Emacs.app/Contents/MacOS/Emacs"
      alias ec="/usr/local/bin/emacsclient -c"
      alias ed="/Applications/Emacs.app/Contents/MacOS/Emacs --daemon"
      ;;
  Linux)
      export EDITOR="emacs"
      alias e="emacs"
      alias ec="emacsclient -c"
      alias ed="emacs --daemon"
      ;;
esac
alias l="ls -la"
alias gs="git status"
alias push="git push"
alias pull="git pull"
alias co="git checkout"
alias rebase="git rebase master"
alias functions-emulator="~/.nvm/versions/node/v6.14.0/bin/functions"
alias php=/usr/local/bin/php
alias lein=~/bin/lein
alias intell="open /Applications/IntelliJ\ IDEA.app/Contents/MacOS/idea"
alias node="~/.nvm/versions/node/v10.10.0/bin/node"
alias dot="/usr/local/Cellar/xdot/1.1_1/bin/xdot"

function date_to_timestmap() {
    timestamp=$(date -d "${1} ${2}" +"%s")
    echo $timestamp;
}

function timestmap_to_date() {
    date=$(date -d @${1})
    echo $date;
}

export DOCKER_REGISTRY=registry-k8s-001-test5-mcc-be-gcw1.metroscales.io
export DOCKER_TAG=build
export TERM=xterm-256color
