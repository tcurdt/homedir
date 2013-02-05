export DISPLAY=:0.0
export FIGNORE=.svn
# sudo locale-gen en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_CTYPE=UTF-8
export LANG=en_US

alias ll='ls -la'
alias ..='cd ..'
alias h='history'
type curl  >/dev/null 2>&1 && alias download='curl -C - -O'
type rsync >/dev/null 2>&1 && alias scpresume='rsync --partial --progress --rsh=ssh'
type pigz  >/dev/null 2>&1 && alias gzip='pigz'

# history
export HISTFILESIZE=50000
export HISTSIZE=50000
export HISTCONTROL=erasedups
export HISTIGNORE="pwd:ls:cd:exit"
export HISTCONTROL=ignoredups
shopt -s histappend

#export RBENV_ROOT=/usr/local/rbenv
#export PATH="$RBENV_ROOT/bin:$PATH"
#export GEM_HOME=$HOME/.gem
#export GEM_PATH=$HOME/.gem

# rbenv
#if [[ -s $HOME/.rbenv/bin ]] ; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
  alias b='bundle exec'
#fi

# rvm
if [[ -s ~/.rvm/scripts/rvm ]] ; then
  source ~/.rvm/scripts/rvm
  rvm-prompt
fi

# homedir
export PATH=$PATH:~/bin:~/.homedir/bin

# platform specific
OS=${OSTYPE//[0-9.]/}
PLATFORM_PROFILE=~/.profile.${OS}
if [ -f "$PLATFORM_PROFILE" ]; then
  source $PLATFORM_PROFILE
  export PATH=$PATH:~/.homedir/bin/_${OS}
fi

# git
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\h:\W$(__git_ps1 "(%s)") \u\$ '

# colors
if [ -x /usr/bin/dircolors ]; then
  eval "`dircolors -b`"
  alias ls='ls --color=auto'
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
