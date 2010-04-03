# .bashrc

# Check for an interactive session
[ -z "$PS1" ] && return

alias ls='ls --color=auto'
alias vi='vim'
PS1='[\u@\h \W]\$ '

export PATH=/home/clark/bin:/home/clark/local/bin:/usr/share/java/apache-ant/bin:$PATH
