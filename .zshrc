# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="patrickarlt"

# Example aliases
alias zshconfig="subl ~/.zshrc"
alias ohmyzsh="subl ~/.oh-my-zsh"
alias hostfile="sudo subl /private/etc/hosts"
alias refreshdns="sudo killall -HUP mDNSResponder"
alias bellerophon="ssh patrickarlt.com -l root -D 9999"
alias heroku="nocorrect heroku"
alias grunt="nocorrect grunt"
alias showinvisible="defaults write com.apple.Finder AppleShowAllFiles YES; killall -HUP Finder"
alias hideinvisible="defaults write com.apple.Finder AppleShowAllFiles NO; killall -HUP Finder"
alias ms="bundle exec middleman server"
alias mm="bundle exec middleman"
alias mb="bundle exec middleman build"
alias be="bundle exec"
alias curly="/Users/patricklocal/customizations/curly.rb"
alias l='ls -FlaG'
alias grep='grep --color=auto'
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"

# git
alias g='git'
alias ga='git add'
alias gc='git commit -m'
alias gd='git diff'
alias gs='git status'
alias gw='git diff --word-diff'

# get alias halp
alias halp='alias'

# get git alias halp
alias galp='git config --get-regexp alias'

# give your terminal session a name
function tabname {
  echo -ne "\033]0;$@\\007"
}

# make a directory and change to it
function mkcd {
  mkdir -p "$*"
  cd "$*"
}

# download kung fu into your brain
function matrix {
  echo -e "\e[1;40m" ; clear ; while :; do echo $LINES $COLUMNS $(( $RANDOM % $COLUMNS)) $(( $RANDOM % 72 )) ;sleep 0.05; done|gawk '{ letters="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@#$%^&*()"; c=$4; letter=substr(letters,c,1);a[$3]=0;for (x in a) {o=a[x];a[x]=a[x]+1; printf "\033[%s;%sH\033[2;32m%s",o,x,letter; printf "\033[%s;%sH\033[1;37m%s\033[0;0H",a[x],x,letter;if (a[x] >= $1) { a[x]=0; } }}'
}

# https://twitter.com/peterc/status/274714598643470337
function maze {
  ruby -e 'print ["\u2571","\u2572"].sample while sleep 0.001'
}

# kill the process on a given port
function killon {
  id=`lsof -i:$1 -t`
  kill -9 $id
}

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# plugins=(git gem npm osx sublime)

source $ZSH/oh-my-zsh.sh

export PATH=/usr/local/Cellar/ruby/1.9.3-p194/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Users/patricklocal/bin:/usr/local/share/npm/bin

export EDITOR="subl -w"