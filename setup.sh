################################################################################
## Setup ZSH                                                                  ##
################################################################################

# Change zsh prompt
cat > ~/.zshrc << EOF
# Change prompt
autoload -U colors && colors
export PS1="%{\$fg_bold[blue]%}%1~%{\$reset_color%}\$ "
EOF

# Persist zsh history
# https://github.com/mattjj/my-oh-my-zsh/blob/master/history.zsh
cat >> ~/.zshrc << EOF

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
EOF

################################################################################
## Setup GPG                                                                  ##
################################################################################

# Setup GPG TTY
cat >> ~/.zshrc << EOF

# Setup GPG TTY
export GPG_TTY=\$(tty)
EOF

################################################################################
## Install Apps                                                               ##
################################################################################

# Install packages
sudo apt update
sudo apt install -y htop tig

# Install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --key-bindings --completion --update-rc

################################################################################
## Setup Git                                                                  ##
################################################################################

git config --global commit.gpgsign true
git config --global core.editor "vim +startinsert"
git config --global alias.co checkout
git config --global alias.s status
