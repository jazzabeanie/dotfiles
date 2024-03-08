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
- Install iTerm2
  - [Set shortcut Command-Ctrl-T to launch new terminal](https://www.computerhope.com/issues/ch002051.htm) (make sure there are no spaces in the name of the automator script
- install [oh-my-zsh](https://ohmyz.sh/#install)
- Following [Powerlevel10k getting started](https://github.com/romkatv/powerlevel10k#getting-started)
  - install [nerd font](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k) which is recommended for Powerlevel10k
  - install [Powerlevel10k](https://github.com/romkatv/powerlevel10k#installation)
- Install [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)
- run scirpts:
  - `setup_dotfiles.sh`
  - ~~`setup_vim.sh`~~
    - setup neovim instead `git clone git@github.com:jazzabeanie/lazyvim-config.git ~/.config/nvim`
  - `install_homebrew_packages.sh`
- sync my cheat fork
  - go to ()[https://github.com/jazzabeanie/cheatsheets] and sync fork
  - `git clone https://github.com/jazzabeanie/cheatsheets.git ~/.config/cheat/cheatsheets/community/`
  - the cheat config file (.dotfiles/home/cheat_config.yml) will need updating with the correct directory paths for the cheatsheets
- Install SteerMouse - https://plentycom.jp/en/steermouse/download.php
- Install 1password
- setup mountain duck (should have been installed by homebrew)
  - license is in email (and probably Joplin)
  - Create a new third party Access Key  on AWS
  - Connect to S3 bucket
    - get access keys from AWS IAM
    - Path: jazzabeanie-personal-storage
  - Read more at https://cyberduck.io/s3/, and https://docs.cyberduck.io/protocols/s3/#connecting
- setup Joplin (should have been installed by homebrew)
  - TODO: write the details of the settings
- consider installing [BCLM](https://github.com/zackelia/bclm) to limit max battery charge. Once installed:
  - `sudo bclm write 77`
  - `bclm read`
  - make it persist with `sudo bclm persist`. Unpersist with `sudo bclm unpersist`


Linux:

- SSH keys:
  - Copy existing keys, or create new ssh key and add to github
  - may also need to start the agent and add them there too.
    - `eval "$(ssh-agent -s)"`
    - `ssh-add ~/.ssh/KEY_NAME`
- install git `sudo apt install git`
- `git clone git@github.com:jazzabeanie/dotfiles.git ~/.dotfiles`
- run `sudo apt install curl`
- Make Zsh the default shell `chsh -s $(which zsh)`
- log out and log back in
- install [oh-my-zsh](https://ohmyz.sh/#install)
- Following [Powerlevel10k getting started](https://github.com/romkatv/powerlevel10k#getting-started)
  - install [nerd font](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k) which is recommended for Powerlevel10k
  - install [Powerlevel10k](https://github.com/romkatv/powerlevel10k#installation)
- reverse scroll direction
  - xfce: **Mouse and Touchpad** -> **Reverse scroll direction**
  - gnome 
    - `xinput --list` to get ID of the mouse. 
    - `xinput set-prop pointer:"Logitech G300s Optical Gaming Mouse" "libinput Natural Scrolling Enabled" 1` to reverse the direction
    - Add this to startup applications so that it runs every time.
    - Make this run on startup by adding to `~/.profile`?
- install [homebrew](https://brew.sh/)
- run scirpts:
  - `setup_dotfiles.sh`
  - `setup_vim.sh`
  - `install_packages.sh`
- Swap CAPS and Ctrl, either:
  - run `setxkbmap -option ctrl:nocaps`
    - make this permanent by going to **Session and Startup** -> **Application Autostart** -> **+** and add this command.
  - Ubuntu:
    - https://askubuntu.com/questions/33774/how-do-i-remap-the-caps-lock-and-ctrl-keys
      - open Tweaks -> Keyboard & Mouse -> Additional Layout options
- install node (required for neovim):
  - install [nvm](https://github.com/nvm-sh/nvm)
  - `nvm install --lts`
  - `nvm use --lts`
- setup neovim: # TODO: put into homebrew script
  - `git clone git@github.com:jazzabeanie/lazyvim-config.git ~/.config/nvim`
  - `brew install neovim`
  - ~~setup neovim: open neovim and run `:h nvim-from-vim` then follow the instructions.~~
    - ~~Setup [LazyVim](https://www.lazyvim.org/)~~
      - ~~install tree-sitter `sudo npm install -g tree-sitter-cli`~~
      - ~~Not sure if I want to use LazyVim~~
  - ~~Another option is https://github.com/jdhao/nvim-config~~
    - ~~This [suggests installing nvim by getting the latest stable release](https://github.com/jdhao/nvim-config/blob/master/docs/README.md). This is because this setup only works with the latest version of nvim and tools like snap or apt won't have the latest vesion.~~
- Install [alacritty](https://github.com/alacritty/alacritty)
- Install [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)
- setup link to S3 bucket.
  - I'm using mountainduck on MacOS
- install [lazygit](https://github.com/jesseduffield/lazygit#ubuntu) (should I try homebrew for linux?)
- install [gron](https://github.com/TomNomNom/gron)
  - download [latest verion](https://github.com/tomnomnom/gron/releases) to `/tmp/gron.tgz`
  - extract with `tar -xvzf /tmp/gron.tgz`
  - move to /usr/local/bin: `sudo mv /tmp/gron /usr/local/bin`
- install [pip](https://pip.pypa.io/en/stable/installation/) with `get-pip.py` script.
  - download the script to tmp, then run it with `python3 /tmp/get-pip.py`
- install [Joplin](https://joplinapp.org/help/install/): `wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash`
- Install [1Password](https://support.1password.com/install-linux/)
  - Also configure Ctrl+Shift+Space to open 1password instead of the quick access to enable password ignoring below.
- setup CopyQ clipboard manager to ignore passwords:
  
  ```
  [Commands]
  1\Automatic=true
  1\Command="
      copyq ignore"
  1\Icon=\xf069
  1\Name=Ignore *1Password* windows
  1\Remove=true
  1\Window=.*1Password.*
  2\Automatic=true
  2\Command="
      copyq ignore"
  2\Icon=\xf069
  2\Input=x-kde-passwordManagerHint
  2\Name=Ignore Keepass window
  2\Remove=true
  size=2
  ```
- install [pip](https://pip.pypa.io/en/stable/installation/) with `get-pip.py` script.

Random Linux box:

- this sets up .bashrc, aliases, and .vimrc. Run:
  - `curl -o quick_setup.sh https://raw.githubusercontent.com/jazzabeanie/dotfiles/master/quick_basic_setup.sh`
  - `sudo chmod 755 quick_setup.sh`
  - `~/quick_setup.sh`
  - `source ~/.bashrc`

Windows:

- Set charge limit on battery to 80%
  - Dell Power Manager (should be already installed)
- Setup git SSH keys
  - https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account
  - need to manually add the key to the ssh agent every reboot for some reason.
```
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
```

- This should fix any DNS issues: Create a file called `.wslconfig` under `C:\Users\%USERPROFILE%` with this contents:
```
[wsl2]
networkingMode=mirrored
dnsTunneling=true
```
- install wsl: `wsl --install`
  - ~~[Fix the DNS](https://stackoverflow.com/questions/62314790/no-internet-connection-on-wsl-ubuntu-windows-subsystem-for-linux)~~  This should be solved by the `.wslconfig` file created above.
    - ~~in cmd: `ipconfig/all`~~
      - ~~usually `10.10.32.50` in the office~~
    - ~~update `/etc/resolv.conf` with the correct nameserver ip address (look for the fields labeled "DNS SERVERS" in the step above)~~
    - ~~add the following to `/etc/wsl.conf`:~~
      - ~~`true` means it will generate `/etc/resolv.conf`, but gives it the wrong nameserver so you have to change it manually every reboot. `false` means it will not generate the file and. Set it to false and copy the file `sudo cp ~/.dotfiles/set_nameserver.sh /etc/profile.d/set_nameserver.sh`~~
- install winget packages

```
winget install --id Git.Git -e --source winget --interactive
winget install --id Joplin.Joplin -e --source winget --interactive
winget install --id Neovim.Neovim -e --source winget
winget install Microsoft.PowerToys -s winget
# QGIS?
```

- clone dotfiles
- Change CAPS to Ctrl (using PowerToys)
- in WSL:
  - run `./setup_dotfiles.sh`
  - run `./install_packages.sh`
  - install [oh-my-zsh](https://ohmyz.sh/)
    - also install Powerlevel10k, and zsh-autosuggestions (instructions above)
  - install [nvm](https://github.com/nvm-sh/nvm)
    - then install node `nvim install node`
  - ~~install [neovim following AppImage instructions](https://github.com/neovim/neovim/wiki/Installing-Neovim)~~
    - maybe it's better to install with [homebrew[(https://docs.brew.sh/Homebrew-on-Linux)
    - May also need to install [FUSE](https://github.com/AppImage/AppImageKit/wiki/FUSE)
    - `ln -s nvim.appimage ./nvim`
    - install nvim config (see details above)
    - run `:CheckHealth` to make sure nvim is working
  - install [nnn](https://github.com/jarun/nnn):
    - download the [latest release](https://github.com/jarun/nnn/releases/latest)
    - follow these install instructions: https://www.youtube.com/embed/-knZwdd1ScU
      - untar, cd into dir, run `sudo make O_NERD=1`
      - run `mv .nnn /usr/local/bin`
  - [Install cheat](https://github.com/cheat/cheat/blob/master/INSTALLING.md)
  - clone cheat sheet
- install [pip](https://pip.pypa.io/en/stable/installation/) with `get-pip.py` script.
- install [lazygit](https://github.com/jesseduffield/lazygit#installation)
- install [McFly](https://github.com/cantino/mcfly) TODO: put this into homebrew script
- change shortcuts of copy and paste in Windows Terminal to ctrl+shift+c and ctrl+shift+v (https://stackoverflow.com/questions/61824177/visual-block-mode-not-working-in-vim-with-c-v-on-wslwindows-10)
- install [vifm](https://github.com/vifm/vifm/blob/master/INSTALL)?
- make xdg-open use powershell:

```
sudo tee /usr/local/bin/xdg-open <<EOF
#!/bin/sh

powershell.exe -c start "'\$@'"
EOF
sudo chmod +x /usr/local/bin/xdg-open
```

# read this page for information on setting up ansible playbooks: https://www.digitalocean.com/community/tutorials/how-to-create-ansible-playbooks-to-automate-system-configuration-on-ubuntu
- install [ranger](https://github.com/ranger/ranger)?

## Other tasks (not scripted)
- ffmpeg / ffplay / youtube-dl
- Update ssh key on [SimpleSSHD](http://www.galexander.org/software/simplesshd/) - only if using android phone
- install alacritty
  - install colour themes https://github.com/alacritty/alacritty-theme (including solarized)
- install [solarized terminal theme](http://ethanschoonover.com/solarized)
- [diff-so-fancy](https://github.com/so-fancy/diff-so-fancy) - you can use snap to install if on Linux
- [lsd](https://github.com/Peltoche/lsd) - you can use snap to install if on Linux
- beets - https://beets.io/ (is this required? zsh does a pretty good job)
