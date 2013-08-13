#!/usr/bin/env zsh

# If we are on OS X, install homebrew
if [[ `uname` == 'Darwin' ]]; then
  which -s brew
  if [[ $? != 0 ]]; then
    echo 'Installing Homebrew...'
      ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
      brew update
  #    brew install htop mongodb mysql nginx node ruby
  fi

  # install some common stuff if it isn't already:
	echo 'Installing some common software...'
	brew install mysql wget tmux

fi
