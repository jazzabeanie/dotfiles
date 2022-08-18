# dotfiles

## Update:

Ansible is not free anymore. Consider using salt - https://docs.saltproject.io/en/getstarted/

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
7. Install cheat https://github.com/cheat/cheat

Linux Mint:

- Add ssh key to github
- install git `sudo apt install git`
- `git clone git@github.com:jazzabeanie/dotfiles.git ~/.dotfiles`
- run `setxkbmap -option ctrl:nocaps`
  - make this permanent by going to **Session and Startup** -> **Application Autostart** -> **+** and add this command.
- reverse scroll direction
  - xfce: **Mouse and Touchpad** -> **Reverse scroll direction**
  - gnome 
    - `xinput --list` to get ID of the mouse. 
    - `xinput set-prop pointer:"Logitech G300s Optical Gaming Mouse" "libinput Natural Scrolling Enabled" 1` to reverse the direction
    - Add this to startup applications so that it runs every time.
- run scirpts:
  - `setup_dotfiles.sh`
  - `setup_vim.sh`
  - `install_packages.sh`

Random Linux box:

- this sets up .bashrc, aliases, and .vimrc. Run:
  - `curl -o quick_setup.sh https://raw.githubusercontent.com/jazzabeanie/dotfiles/master/quick_basic_setup.sh`
  - `sudo chmod 755 quick_setup.sh`
  - `~/quick_setup.sh`
  - `source ~/.bashrc`

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
- 1Password
- [diff-so-fancy](https://github.com/so-fancy/diff-so-fancy) - you can use snap to install if on Linux
- [lsd](https://github.com/Peltoche/lsd) - you can use snap to install if on Linux
