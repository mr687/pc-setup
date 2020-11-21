#! /bin/bash

# Xcode terminal tool
xcode-select --install

# Install homebrew and applications
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew update
brew cask install iterm2
brew install bash
brew install fortune
brew install cowsay
brew install git
brew install vcprompt
brew cask install rectangle
brew cask install alfred
brew cask install firefox
brew cask install visual-studio-code

# Install and settings nvm for node and npm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.0/install.sh | bash
nvm install stable
npm install -g lite-server eslint ngoder-cli

# Setting dotfiles
DOTFILES=(.bash_profile .gitconfig .gitignore)

# Remove old fotfiles and replace them
for dotfile in $(echo ${DOTFILES[*]});
do
  rm ~/$(echo $dotfile)
  ln -s ./home/$(echo $dotfile) ~/$(echo $dotfile)
done

ssh-keygen -t rsa -b 2048
ssh-keygen -t rsa -b 2048 -f "id_rsa_github"
ssh-keygen -t rsa -b 2048 -f "id_rsa_serv1"