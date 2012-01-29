export DISPLAY=:0.0
# sudo locale-gen en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_CTYPE=UTF-8
export LANG=en_US
export FIGNORE=.svn

alias ll='ls -la'
alias ..='cd ..'
alias h='history'
alias scpresume='rsync --partial --progress --rsh=ssh'
alias download='curl -C - -O'
type pigz >/dev/null && alias gzip='pigz'

# history
export HISTFILESIZE=50000
export HISTSIZE=50000
export HISTCONTROL=erasedups
export HISTIGNORE="pwd:ls:cd:exit"
export HISTCONTROL=ignoredups
shopt -s histappend

# platform specific
OS=${OSTYPE//[0-9.]/}
export PATH=$PATH:~/bin/_${OS}:~/bin
PLATFORM_PROFILE=.profile.${OS}
if [ -f "$PLATFORM_PROFILE" ]; then
  source $PLATFORM_PROFILE
fi

# if [[ "$PS1" &&; "${STARTED_SCREEN:-No}" = No && "${SSH_TTY:-No}" != No ]]; then
# STARTED_SCREEN=1 ; export STARTED_SCREEN
# if [ -d $HOME/.screen/logs ]; then
# sleep 1
# screen -RR && exit 0
# echo "Screen failed! continuing with normal bash startup"
# else
# mkdir -p $HOME/.screen/logs
# fi
