alias c='clear'
alias ll='ls -lh'
alias lh='ls -lhSr'
alias lt='ls -lthr'

alias l='less'
alias p='pushd'
alias o='popd'
alias h='history'
alias grep='grep --color'
alias mtail='multitail'

## Quartus
alias quartus_12.1='~/altera/12.1/quartus/bin/quartus'
alias quartus_13.0='~/altera/13.0/quartus/bin/quartus'

##Commands
alias connect_svn='ssh -N -f -L 3690:islanders.eecg.utoronto.ca:3690 ra.eecg.utoronto.ca'
alias connect_vnc='ssh -L 5942:localhost:5942 -N -f navy.eecg.utoronto.ca'
alias connect_ug_vnc='ssh -L 5942:localhost:5942 -N -f ug180'
alias sshfs_mount_scinet_scraths='sshfs login.scinet.utoronto.ca:/scratch/v/vaughn/kmurray ~/sshfs_mounts/scinet_scratch/'

#Make sure gvim doesn't spew a global menu warning
alias gvim='UBUNTU_MENUPROXY= gvim'

#Use the real time command not the bash built in
alias time='/usr/bin/time'

#Make ifstat print on a single line
alias ifstat='ifstat -S'

#Make a directory and then move too it
my_md() { mkdir $@; cd $@; }
my_mdp() { mkdir -p $@; cd $@; }
alias md=my_md
alias mdp=my_mdp

#Fix issues with NX and svn prompint for password to 'null' keyring
alias fix_svn_keyring='rm ~/.gnome2/keyrings/login.keyring'

##Directory shortcuts
alias vb='cd `dirname $V2B_REGRESSION_BASE_DIR`'
alias wk='cd ~/dev/work'
alias vp='cd $VPR_BASE_DIR'
alias tr='cd ~/dev/trees'
alias kdoc='cd ~/Documents/Kevin'
alias fp='cd $FP_BASE_DIR'
