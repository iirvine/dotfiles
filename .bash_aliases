# general
alias ..='cd ..'
alias ...='cd ../..'
alias ~='cd ~'
alias -- -='cd -'

alias reload='. ~/.bash_profile'
alias ls='ls -G'
alias ll='ls -a'
alias cls='clear'

alias st="sublime"

# git
alias g='git'
alias status='git status'
alias pull='git pull origin master'
alias push='git push origin master'
alias commit='git commit -am'

# save
alias sdirs='source ~/.dirs' 
alias show='cat ~/.dirs'
save () { /usr/bin/sed "/$@/d" ~/.dirs > ~/.dirs1; \mv ~/.dirs1 ~/.dirs; echo "$@"=\"`pwd`\" >> ~/.dirs; source ~/.dirs ; }

# Initialization for the above 'save' facility:
# source the .sdirs file:
sdirs
# set the bash option so that no '$' is required when using the above facility
shopt -s cdable_vars