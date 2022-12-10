export PATH
export ZSH="/Users/irondsd/.oh-my-zsh"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH=/.npm-global/bin:$PATH
export PATH="$HOME/bin:$PATH"
export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

ZSH_THEME="ggn00b"
ENABLE_CORRECTION="false"
ZSH_DISABLE_COMPFIX=true
unsetopt correct_all
plugins=(
    git
    osx
    zsh-autosuggestions
    dotenv
    brew
    sudo
    z
    zsh-syntax-highlighting
    )

source $ZSH/oh-my-zsh.sh

#hidden files
alias showhidden='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hidehidden='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias hide="chflags hidden"
alias unhide="chflags nohidden"

#ip
alias lip="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"
alias myip="curl http://ipecho.net/plain; echo"  

#navigation
alias ..="cd .."
alias ...="cd ../.."

#macos
alias f='open -a Finder ./'
cdff () { cd "`ff $@`"; }
ff () { osascript -e 'tell application "Finder"'\
 -e "if (${1-1} <= (count Finder windows)) then"\
 -e "get POSIX path of (target of window ${1-1} as alias)"\
 -e 'else' -e 'get POSIX path of (desktop as alias)'\
 -e 'end if' -e 'end tell'; };\

#rest
zipf () { zip -r "$1".zip "$1" ; }                  # zipf:         Zip a folder
zipp () { zip -er "$1".zip "$1" ; }                 # zipp:         Zip a folder with password
killport () { npx kill-port "$1" ; }                # kill <port>  kills all the process of a port
alias ls='ls -GFh'
alias hosts="sudo open -a sublime\ text /etc/hosts" 
alias edit='subl'
alias zshrc='code ~/.zshrc'
alias update="source ~/.zshrc"
alias pg="ping google.com -c 20" 
alias ut="python3 ~/bin/ut"
alias gcd="git checkout dev"
alias gcs="git checkout stage"
alias gcm="git checkout main"
