ZSH=$HOME/.oh-my-zsh
ZSH_THEME="norm"
DISABLE_AUTO_TITLE="true"
DISABLE_CORRECTION="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=()

source $ZSH/oh-my-zsh.sh

export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:$PATH
export PROJECT_HOME=$HOME/Code

export EDITOR="vim"

# History Settings
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=10000
export SAVEHIST=${HISTSIZE}
export HISTIGNORE="ls:ll:cd:cd -:pwd:exit:date:* --help"

setopt inc_append_history
setopt hist_expire_dups_first
setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt share_history

# Keybindings

export KEYTIMEOUT=20
bindkey -v

source /usr/local/bin/virtualenvwrapper.sh
source $HOME/.bin/tmuxinator.zsh
