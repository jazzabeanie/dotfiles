#!/bin/bash

# setup neovim config
git clone git@github.com:jazzabeanie/lazyvim-config.git ~/.config/nvim

# For macOS (using Homebrew)
if [[ "$(uname)" == "Darwin" ]]; then
  brew install bash
  brew install bash-completion
  brew install coreutils
  brew install curl
  brew install git-extras
  brew install gnu-sed
  brew install tmux
  brew install tree
  brew install rar
  brew install vim
  brew install wget
  brew install fdk-aac
  brew install sdl  # required so that ffmpeg also installs ffplay
  brew install ffmpeg
  brew install jpeg
  brew install lame
  brew install openjpeg
  brew install opus
  brew install x264
  brew install xvid
  brew install direnv
  brew install diff-so-fancy
  # git clone git@github.com:jazzabeanie/cheatsheets.git ~/.config/cheat/cheatsheets/community
  # brew install cheat  # use cheat.sh instead
  brew install ripgrep
  brew install maccy
  brew install yt-dlp
  brew install gron
  brew install fx # JSON viewer / interacter
  brew install visidata # for viwing tabular data
  brew install fzf # fuzzy finder for terminal, required for fzf-lua in lazyvim
  brew install bat # https://github.com/sharkdp/bat

  brew tap cantino/mcfly
  brew install cantino/mcfly/mcfly

  brew install --cask firefox
  brew install --cask transmission
  brew install --cask phoenix # window manager
  brew install --cask remarkable
  brew install --cask iterm2
  brew install --cask mountain-duck
  brew install --cask dropbox
  brew install --cask itsycal
  brew install --cask miniconda
  brew install --cask joplin
  brew install --cask vlc
# For Ubuntu/Debian (using APT)
elif [[ "$(uname)" == "Linux" ]]; then
  echo "no linux only homebrew packages"
fi

# The rest for both systems:
brew install neovim
brew install lazygit

echo "Installation script finished!"
