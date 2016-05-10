# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

#ZSH_THEME="random"
ZSH_THEME="agnoster"
#ZSH_THEME="wezm+"
DEFAULT_USER="ClaudeKim"

alias py="python"
#alias py="~/workspace/prev/cs101/pythonreset & python" 
#alias ss="ssh claude@whiteclouds.me -p44416"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
 DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
 COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(jump git brew extract gem)


source $ZSH/oh-my-zsh.sh
unsetopt correct_all
#export CLICOLOR=1export LSCOLORS=ExFxCxDxBxegedabagacad




# Customize to your needs...
if [[ `uname -a | grep Darwin` != '' ]]; then
	export PATH=/usr/local/bin:$PATH
fi
#PROMPT=$'%{\e[01;32m%}%n@%m%{\e[00m%}:%{\e[01;34m%}%5c%{\e[00m%}\$ '
TERM="xterm-256color"

export PATH="/usr/local/mysql/bin:/usr/local/sbin:/opt/X11/include/freetype2:$PATH"
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/
export PYTHONPATH="/usr/local/lib/python2.7/site-packages"

if [ -z "$SSH_AUTH_SOCK" ] ; then
    eval `ssh-agent -s`
    ssh-add
fi
