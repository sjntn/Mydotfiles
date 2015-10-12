# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Update
brew update

# Upgrade
brew upgrade

# bundle ~/.Brewfile
brew bundle ~/.Brewfile

# Install homebrew-cask
brew tap phinze/homebrew-cask || true
brew install brew-cask

brew install ansible
brew install cmake
brew install imagemagick
brew install phantomjs
brew install pow
brew install tree
brew install wget
brew install w3m
brew install z

# Install Ruby
brew install rbenv
brew install ruby-build

# Install Datebase
brew install mysql
brew install postgresql
brew install redis
brew install mongodb
brew install memcached

# Install Node
brew install node

# Install Python
brew install python

# Install Haskell
brew install ghc cabal-install

# Install Java
brew cask install java

# Install Scala
brew install scala
brew install sbt

# Install peco
brew tap peco/peco
brew install peco

# Install must apps
brew cask install google-chrome
brew cask install firefox
brew cask install dropbox
brew cask install evernote
brew cask install iterm2
brew cask install skype
brew cask install line
brew cask install slack
brew cask install sequel-pro
brew cask install sketch
brew cask install cyberduck
brew cask install duet
brew cask install gyazo
brew cask install rstudio
brew cask install virtualbox
brew cask install vagrant
brew cask install wunderlist

# Install editor
brew cask install sublime-text3
brew cask install atom
brew cask install macvim

brew tap homebrew/versions

# Install Docker
brew cask search docker toolbox
# make docker-machine default
eval "$(docker-machine env default)"

# Install tmux
brew install tmux

# Install zsh
brew install zsh

# Make default zsh
chsh -s /usr/local/bin/zsh

# Remove outdated versions from the cellar
brew cleanup
brew cask cleanup
