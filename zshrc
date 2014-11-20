# Path to your oh-my-zsh configuration.
ZSH=$HOME/.my_zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)


# Customize to your needs...
# yjiang's bashrc
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alFh'
alias la='ls -A'
alias l='ls -CF'

#mv & cp
#alias cp='cp -g'
#alias mv='mv -g'

#	proxy
alias sshchina='ssh -CfNg -D 9999 yjiang@v21.sshchina.com'

#	dropbox
alias dropbox='python /home/yjiang/.dropbox-dist/dropbox.py'

# some more git aliases
alias gf='git-ftp'
alias gtst='git status'
alias gtlg='git log'
alias gtlg1='git log --pretty=format:"%h %an %s" --color=auto'
alias gtlg2='git log --pretty=oneline'
alias gtbr='git branch'
alias gtco='git commit'
alias gtdi='git diff'
alias gv='git svn'

#	php project
alias joyo='cd ~/joyo/'
alias boss='cd ~/joyo/boss/'

#iftop
alias iftop='sudo iftop -i eth0'

#rsync
alias rsync='rsync -avz'

#tmux
alias tmux='tmux -2'
alias tmuxp='tmuxp load ~/.tmuxp/tmuxp.yaml -2'

alias vi='vim'

#ctags
alias ctags='ctags -R *'


if [ -f ~/.bash_local ]; then
    . ~/.bash_local
fi

#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

#set bash to vim mode
set -o vi

plugins=(git)
source $ZSH/zshrc
