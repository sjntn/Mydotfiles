#!/bin/sh

# make symbolic links
for name in home/*; do
  target=$HOME/.`basename $name`
  if [ -e "$target" ]; then
    if [ ! -L "$target" ]; then
      echo "WARNING: $target exists but is not a symlink."
    fi
  else
    ln -s "$PWD/$name" "$target"
  fi
done

# Install Homebrew
which brew > /dev/null
if [ "$?" -ne 0 ]; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install NeoBundle
if [ ! -d $HOME/.vim/bundle/neobundle.vim ]
then
  curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
fi

# Install software and apps
brew bundle

# Show hidden files with Finder
read -p "Do you wish to show hidden files with Finder? y/n " yn
if [ $yn = "y" -o $yn = "Y" ]; then
    defaults write com.apple.finder AppleShowAllFiles TRUE
    echo "done!!"
    echo "...restart finder\n"
    killall Finder
fi

# Never create .DS_Store
read -p "Never create .DS_Store? y/n" yn
if [ $yn = "y" -o $yn = "Y" ]; then
    defaults write com.apple.desktopservices DSDontWriteNetworkStores true
    echo "...success"
fi

# install OhMyZsh
if [ ! -d $HOME/.oh-my-zsh ]; then
  curl -L http://install.ohmyz.sh | sh
fi

# Make default shell
read -p "Do you wish to change default shell? zsh y/n " yn
if [ $yn = "y" -o $yn = "Y" ]; then
    chsh -s /bin/zsh
    echo "done!!"
fi
