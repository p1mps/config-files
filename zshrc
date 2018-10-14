# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="robbyrussell"

export EDITOR="emacs"
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
plugins=(git osx lein)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/Library/TeX/texbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/caspar/.composer/vendor/bin:/usr/texbin

#export PATH="$(brew --prefix homebrew/php/php54)/bin:$PATH"
case `uname` in
  Darwin)
      # commands for OS X go here
      alias e="/Applications/Emacs.app/Contents/MacOS/Emacs"
      alias ec="emacsclient"
      alias ed="/Applications/Emacs.app/Contents/MacOS/Emacs --daemon"
      ;;
  Linux)
      alias e="emacs"
      alias ec="emacsclient"
      alias ed="emacs --daemon"
      ;;
esac
alias l="ls -la"
alias gs="git status"
alias push="git push"
alias pull="git pull"
