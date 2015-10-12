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
