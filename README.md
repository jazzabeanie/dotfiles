# dotfiles

## Prerequisites

OS X:
1. Install Homebrew.
2. Install Ansible (`brew install ansible`)
3. Install [Go](http://golang.org/dl/). Don't forget to follow the [install instructions](https://golang.org/doc/install)
4. Install git

Ubuntu:
1. Install Ansible (https://docs.ansible.com/ansible/intro_installation.html#latest-releases-via-apt-ubuntu)
2. Instll [Go](http://golang.org/dl/). Don't forget to follow the [install instructions](https://golang.org/doc/install)
3. Install git(`sudo apt install git`)

## Installing
```
cd ~
git clone https://github.com/jazzabeanie/dotfiles.git .dotfiles
# or us SSH if setup git@github.com:jazzabeanie/dotfiles.git
cd ~/.dotfiles
# you may need to change the Makefile first
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

# read this page for information on setting up ansible playbooks: https://www.digitalocean.com/community/tutorials/how-to-create-ansible-playbooks-to-automate-system-configuration-on-ubuntu
todo: add installation of ffmpeg (including ffplay)
todo: remove bash_completion from .bashrc and add it another way
todo: remap caps to ctrl
        https://askubuntu.com/questions/149971/how-do-you-remap-a-key-to-the-caps-lock-key-in-xubuntu
