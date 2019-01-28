#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export PS1="\[\033[36m\]\u\[\033[m\]\033[32m\]:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

zipf () { zip -r "$1".zip "$1" ; }        		    # zipf:         To create a ZIP archive of a folder
zipp () { zip -er "$1".zip "$1" ; }        		    # zipp:         To create a password protected ZIP archive of a folder
httpHeaders () { /usr/bin/curl -I -L $@ ; }         # httpHeaders:   Grabs headers from web page
alias ..="cd .."									# .. 			Go back
alias ls='ls -GFh'									# ls 			# Preferred 'ls' implementation
alias hosts="sudo open -a sublime\ text /etc/hosts" # hosts  		Open hosts file in Sublime Text
alias python="python3.7"                    			# python        Default python enviroment 
alias pip='pip3'									# pip:          Preferred pip instead of pip3
alias edit='subl'                        		    # edit:         Opens any file in sublime editor
alias f='open -a Finder ./'             		    # f:            Opens current directory in MacOS Finder
alias ~="cd ~"                          		    # ~:            Go Home
alias showhidden='defaults write com.apple.finder ShowAllFiles TRUE'
alias hidehidden='defaults write com.apple.finder ShowAllFiles FALSE'
alias exec='chmod u+x' 								# exec  		Sets the file to be executable
