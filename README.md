# dotfiles

## Prerequisites

1. Install Homebrew.
2. Install Ansible (`brew install ansible`).
3. Install [Go](http://golang.org/dl/).

## Installing

```
cd ~
git clone https://github.com/jazzabeanie/dotfiles.git .dotfiles
cd ~/.dotfiles
make

cd ~/.emacs.d
cask install

touch ~/.gitconfig.local
# input your personal GitHub details into this file:

#[github]
#    user = GitHubUserName
#[user]
#    name = Your Name
#    email = youremail@gmail.com
```
