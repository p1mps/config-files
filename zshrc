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
plugins=(git brew mysql-macports npm osx sublime laravel4 vagrant)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/caspar/.composer/vendor/bin:/usr/texbin

#export PATH="$(brew --prefix homebrew/php/php54)/bin:$PATH"
alias subl="/Applications/Sublime\ Text.app/Contents/MacOS/Sublime\ Text"
alias serve="php artisan serve"
alias vs="vagrant ssh"
alias vu="vagrant up"
alias vh="vagrant halt"
alias l="ls -la"
alias gs="git status"
alias etico="ssh root@server-etico"
alias push="git push"
alias ricambi="cd /Users/caspar/Sites/ricambiguru"
alias crawler="cd /Users/caspar/Sites/crawler"
alias earth="cd /Users/caspar/Sites/easyearth"
alias pull="git pull"
PERL_MB_OPT="--install_base \"/Users/caspar/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/caspar/perl5"; export PERL_MM_OPT;
alias guru="ssh -p27123 -vv -i ~/Downloads/NuovoServizioEU.pem ubuntu@www.ricambi.guru"
alias serve="php artisan serve"
