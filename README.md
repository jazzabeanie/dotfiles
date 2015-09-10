# dotfiles

## Prerequisites

1. Install Homebrew.
2. Install Ansible (`brew install ansible`).
3. Install [Go](http://golang.org/dl/). Don't forget to follow the [install instructions](https://golang.org/doc/install)
4. Install git

## Installing

```
cd ~
git clone https://github.com/jazzabeanie/dotfiles.git .dotfiles
# or us SSH if setup git@github.com:jazzabeanie/dotfiles.git
cd ~/.dotfiles
make

cd ~/.emacs.d
cask install

touch ~/.gitconfig.local
# input your personal GitHub details into .gitconfig.local:
##################################
#[github]
#    user = GitHubUserName
#[user]
#    name = Your Name
#    email = youremail@gmail.com
##################################
```
