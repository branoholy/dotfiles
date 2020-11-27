# Change prompt
autoload -U colors && colors
export PS1="%{$fg_bold[blue]%}%1~%{$reset_color%}$ "

# Where to save history to disk
HISTFILE=~/.zsh_history

# How many lines of history to keep in memory
HISTSIZE=5000

# Number of history entries to save to disk
SAVEHIST=5000

# Write to the history file immediately, not when the shell exits
setopt INC_APPEND_HISTORY

# Expire duplicate entries first when trimming history
setopt HIST_EXPIRE_DUPS_FIRST

# Don't record an entry that was just recorded again
setopt HIST_IGNORE_DUPS

# Delete old recorded entry if new entry is a duplicate
setopt HIST_IGNORE_ALL_DUPS

# Don't record an entry starting with a space
setopt HIST_IGNORE_SPACE

# Don't write duplicate entries in the history file
setopt HIST_SAVE_NO_DUPS

# Remove superfluous blanks before recording entry
setopt HIST_REDUCE_BLANKS

# Setup GPG TTY
export GPG_TTY=$(tty)

# Setup NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Setup FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
