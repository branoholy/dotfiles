################################################################################
## Setup ZSH                                                                  ##
################################################################################

cp .zshrc ~

################################################################################
## Install Apps                                                               ##
################################################################################

# Install packages
sudo apt update
sudo apt install -y htop tig

# Install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --key-bindings --completion --no-update-rc

################################################################################
## Setup Git                                                                  ##
################################################################################

git config --global pull.ff only
git config --global commit.gpgsign true
git config --global core.editor 'vim "+normal gg" +startinsert!'
git config --global alias.co checkout
git config --global alias.s status

################################################################################
## Setup NVM                                                                  ##
################################################################################

# Remove NPM prefix
npm config delete prefix
