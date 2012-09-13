alias c='clear'
alias ll='ls -lh'
alias lh='ls -lhSr'

alias l='less'
alias p='pushd'
alias o='popd'
alias h='history'
alias grep='grep --color'
alias mtail='multitail'

##Commands
alias connect_svn='ssh -L 3690:islanders.eecg.utoronto.ca:3690 kmurray@navy.eecg.utoronto.ca'
#Make sure gvim doesn't spew a global menu warning
alias gvim='UBUNTU_MENUPROXY= gvim'
#Use the real time command not the bash built in
alias time='/usr/bin/time'

##Directory shortcuts
alias vb='cd `dirname $V2B_REGRESSION_BASE_DIR`'
alias wk='cd ~/dev/work'
alias vp='cd $VPR_BASE_DIR'
alias tr='cd ~/dev/trees'
