# dotfiles

Ansible is not free anymore. Consider using salt - https://docs.saltproject.io/en/getstarted/

## Prerequisites

Do I still need to do this?
```
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

## Installing

OS X:

- Install Homebrew.
- Install `xcode-select --install` (if required. It maybe installed with Homebrew)
  - this should install git. Check with `git --version`
- Change CAPS to Ctrl
- Enable touch to click and 3 finger drag
  - do this in Accessability
- Setup git SSH keys
  - https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account
- `git clone git@github.com:jazzabeanie/dotfiles.git ~/.dotfiles`
- run scirpts:
  - `setup_dotfiles.sh`
  - `setup_vim.sh`
  - `install_homebrew_packages.sh`
- Install iTerm2
  - [Set shortcut Command-Ctrl-T to launch new terminal](https://www.computerhope.com/issues/ch002051.htm) (make sure there are no spaces in the name of the automator script
- install [oh-my-zsh](https://ohmyz.sh/#install)
- Following [Powerlevel10k getting started](https://github.com/romkatv/powerlevel10k#getting-started)
  - install [nerd font](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k) which is recommended for Powerlevel10k
  - install [Powerlevel10k](https://github.com/romkatv/powerlevel10k#installation)
- Install [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)
- Install cheat https://github.com/cheat/cheat
- Install SteerMouse - https://plentycom.jp/en/steermouse/download.php
- Install teamocil? https://github.com/remiprev/teamocil/blob/master/README.md
- Install [bat](https://github.com/sharkdp/bat)?
- Install 1password
- Install [pastebot](https://tapbots.net/pastebot2/Pastebot.dmg)

Linux:

- Add ssh key to github
  - may also need to start the agent and add them there before it will work
- install git `sudo apt install git`
- `git clone git@github.com:jazzabeanie/dotfiles.git ~/.dotfiles`
- Swap CAPS and Ctrl, either:
  - run `setxkbmap -option ctrl:nocaps`
    - make this permanent by going to **Session and Startup** -> **Application Autostart** -> **+** and add this command.
  - Ubuntu:
    - https://askubuntu.com/questions/33774/how-do-i-remap-the-caps-lock-and-ctrl-keys
      - install `sudo apt-get install gnome-tweak-tool`
      - open Tweaks -> Keyboard & Mouse -> Additional Layout options
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
- Make Zsh the default shell `chsh -s $(which zsh)`
- install [oh-my-zsh](https://ohmyz.sh/#install)
- Following [Powerlevel10k getting started](https://github.com/romkatv/powerlevel10k#getting-started)
  - install [nerd font](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k) which is recommended for Powerlevel10k
  - install [Powerlevel10k](https://github.com/romkatv/powerlevel10k#installation)
- Install [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)
- Install teamocil? https://github.com/remiprev/teamocil/blob/master/README.md
- Install [bat](https://github.com/sharkdp/bat)

Random Linux box:

- this sets up .bashrc, aliases, and .vimrc. Run:
  - `curl -o quick_setup.sh https://raw.githubusercontent.com/jazzabeanie/dotfiles/master/quick_basic_setup.sh`
  - `sudo chmod 755 quick_setup.sh`
  - `~/quick_setup.sh`
  - `source ~/.bashrc`

# read this page for information on setting up ansible playbooks: https://www.digitalocean.com/community/tutorials/how-to-create-ansible-playbooks-to-automate-system-configuration-on-ubuntu

## Other tasks (not scripted)
- ffmpeg / ffplay / youtube-dl
- Update ssh key on SimpleSSHD
- install [solarized terminal theme](http://ethanschoonover.com/solarized)
- https://www.mowglii.com/itsycal/
- 1Password
- [diff-so-fancy](https://github.com/so-fancy/diff-so-fancy) - you can use snap to install if on Linux
- [lsd](https://github.com/Peltoche/lsd) - you can use snap to install if on Linux
- beets - https://beets.io/
