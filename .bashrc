#[[ $TERM != "screen" ]] && exec tmux
alias c='clear'
alias h='history'
alias cs='clear;ls'
alias p='cat'
alias pd='pwd'
alias lsa='ls -a'
alias lsl='ls -l'
alias pd='pwd'
alias t='time'
alias k='kill'
alias null='/dev/null'
alias home='cd ~'
alias root='cd /'
alias dtop='cd ~/Desktop'
alias drive='cd /g/'
# Common project directories
alias cmi='cd ~/development/cmi'
alias th='cd ~/development/thrivehive'
alias ..='cd ..'
alias ...='cd ..; cd ..'
alias ....='cd ..; cd ..; cd ..'
alias g='git'
alias st='git status'
alias com='git commit -m'
alias clone='git clone'
alias sth='git stash'
alias lg='git log'
alias u='git add -u'
alias all='git add .'
alias aws-cmi='export AWS_DEFAULT_PROFILE=cmi'
alias ssh-cmi="ssh -i /g/cmidev.pem"
alias ssh-exp="ssh -i /z/experimental-november.pem"
alias push="git push"
# Let there be color in grep!
alias grep='grep —color=auto'
force_color_prompt=yes
## Colorize the ls output ##
alias ls='ls --color=auto'

alias install='sudo apt install -y'
alias uninstall='sudo apt uninstall -y'
