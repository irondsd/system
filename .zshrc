export PATH
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export BASH_SILENCE_DEPRECATION_WARNING=1
export PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export ZSH="/Users/irondsd/.oh-my-zsh"

ZSH_THEME="irondsd"
ENABLE_CORRECTION="true"
plugins=(
    git
    osx
    zsh-autosuggestions
    # last-working-dir
    dotenv
    brew
    sudo
    z
    zsh-syntax-highlighting
    )

source $ZSH/oh-my-zsh.sh

zipf () { zip -r "$1".zip "$1" ; }                  # zipf:         To create a ZIP archive of a folder
zipp () { zip -er "$1".zip "$1" ; }                 # zipp:         To create a password protected ZIP archive of a folder
killport () { npx kill-port "$1" ; }                # kill #port#   kills all the processes that uses specific port
cdff () { cd "`ff $@`"; }
ff () { osascript -e 'tell application "Finder"'\
 -e "if (${1-1} <= (count Finder windows)) then"\
 -e "get POSIX path of (target of window ${1-1} as alias)"\
 -e 'else' -e 'get POSIX path of (desktop as alias)'\
 -e 'end if' -e 'end tell'; };\

alias ..="cd .."                                    # ..            Go back
alias ls='ls -GFh'                                  # ls            # Preferred 'ls' implementation
alias hosts="sudo open -a sublime\ text /etc/hosts" # hosts         Open hosts file in Sublime Text
alias python="python3"                              # python        Default python enviroment 
alias pip='pip3'                                    # pip:          Preferred pip instead of pip3
alias edit='subl'                                   # edit:         Opens any file in sublime editor
alias f='open -a Finder ./'                         # f:            Opens current directory in MacOS Finder
alias ~="cd ~"                                      # ~:            Go Home
alias showhidden='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hidehidden='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
# alias exec='chmod u+x'                              # exec          Sets the file to be executable
alias pg="echo 'Pinging Google' && ping google.com" # pg            ping google
alias zshrc='code ~/.zshrc'
alias myip="curl http://ipecho.net/plain; echo"
alias lip="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"
alias update="source ~/.zshrc"
alias ohmyzsh="f ~/.oh-my-zsh"
alias rna="react-native run-android"
alias rni="react-native run-ios"
