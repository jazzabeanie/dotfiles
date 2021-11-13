# dotfiles

## Prerequisites

OS X:
1. Install Homebrew.
2. Install Ansible (`brew install ansible`)
3. Install `xcode-select --install`
  - this should install git. Check with `git --version`
4. Change CAPS to Ctrl
5. Enable touch to click and 3 finger drag
  - do this in Accessability
6. Setup git SSH keys
  - https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account

## Installing
```
cd ~
git clone git@github.com:jazzabeanie/dotfiles.git .dotfiles
cd ~/.dotfiles
# you may need to change the Makefile first
make

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
- ffmpeg / ffplay / youtube-dl
- Update ssh key on SimpleSSHD
- install [solarized terminal theme](http://ethanschoonover.com/solarized)
- https://www.mowglii.com/itsycal/
