#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export PS1="\[\033[36m\]\u\[\033[m\]:\[\033[33;1m\]\w\[\033[m\]/ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

zipf () { zip -r "$1".zip "$1" ; }        		    # zipf:         To create a ZIP archive of a folder
zipp () { zip -er "$1".zip "$1" ; }        	 	    # zipp:         To create a password protected ZIP archive of a folder
killport () { npx kill-port "$1" ; }                # kill #port#   kills all the processes that uses specific port
httpHeaders () { /usr/bin/curl -I -L $@ ; }         # httpHeaders:  Grabs headers from web page
alias ..="cd .."									# .. 			Go back
alias ls='ls -GFh'									# ls 			# Preferred 'ls' implementation
alias hosts="sudo open -a sublime\ text /etc/hosts" # hosts  		Open hosts file in Sublime Text
alias python="python3"                    			# python        Default python enviroment
alias pip='pip3'									# pip:          Preferred pip instead of pip3
alias edit='subl'                        		    # edit:         Opens any file in sublime editor
alias f='open -a Finder ./'             		    # f:            Opens current directory in MacOS Finder
alias ~="cd ~"                          		    # ~:            Go Home
alias showhidden='defaults write com.apple.finder ShowAllFiles TRUE'
alias hidehidden='defaults write com.apple.finder ShowAllFiles FALSE'
alias exec='chmod u+x' 								# exec  		Sets the file to be executable
function ff { osascript -e 'tell application "Finder"'\
 -e "if (${1-1} <= (count Finder windows)) then"\
 -e "get POSIX path of (target of window ${1-1} as alias)"\
 -e 'else' -e 'get POSIX path of (desktop as alias)'\
 -e 'end if' -e 'end tell'; };\

function cdff { cd "`ff $@`"; };

export PATH
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export BASH_SILENCE_DEPRECATION_WARNING=1
export PATH=/usr/local/Cellar/python/3.7.5/bin/python3/bin:$PATH%
