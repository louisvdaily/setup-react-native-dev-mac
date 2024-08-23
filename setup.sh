#!/bin/bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install packages from Brewfile
brew bundle --file=Brewfile

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Symlink files in dotfiles directory
ln -sf "$(pwd)/dotfiles/.zshrc" ~/.zshrc
ln -sf "$(pwd)/dotfiles/.gitconfig" ~/.gitconfig
ln -sf "$(pwd)/dotfiles/.vimrc" ~/.vimrc

# Install VS Code extensions
./vscode-settings/extensions.sh
