# dotfiles

## Prerequisites

OS X:
1. Install Homebrew.
2. Install Ansible (`brew install ansible`)
3. Install git
4. Change CAPS to Ctrl
5. Enable touch to click and 3 finger drag
6. Setup git SSH keys

Ubuntu:
1. Install Ansible (https://docs.ansible.com/ansible/intro_installation.html#latest-releases-via-apt-ubuntu)
2. Instll [Go](http://golang.org/dl/). Don't forget to follow the [install instructions](https://golang.org/doc/install)
3. Install git(`sudo apt install git`)
4. Setup git SSH keys

## Installing
```
cd ~
git clone git@github.com:jazzabeanie/dotfiles.git .dotfiles
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

## Other tasks (not scripted)
- Steam
- installing node.js
-      - check that `command -v nvm` in bsah  outputs "NVM"
-      - install desired version of node with `nvm install 4.4.7` (check the desired version first)
-      - run `nvm alias default node`
-      - read more here: http://www.hostingadvice.com/how-to/install-nodejs-ubuntu-14-04/#node-version-manager
- Update ssh key on saleway server
- Update ssh key on SimpleSSHD
- install [solarized terminal theme](http://ethanschoonover.com/solarized)
