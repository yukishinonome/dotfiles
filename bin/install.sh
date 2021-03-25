#!/bin/bash

mkdir ~/.zsh
curl -o ~/.zsh/git-completion.zsh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh
curl -o ~/.zsh/git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

brew install ghq
brew install peco

ln -sf ~/.dotfiles/.vimrc ~/.vimrc
ln -sf ~/.dotfiles/.zshrc ~/.zshrc

source ~/.zshrc
