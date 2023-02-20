# sudo apt install vim-gtk3 # TODO: move this into the snaps install script
# sudo mv /etc/apt/preferences.d/nosnap.pref ~/Documents/nosnap.pref.backup
# sudo apt update
# now restart then run `sudo apt install snapd`

curl -sL https://github.com/jazzabeanie/vcprompt/raw/master/bin/vcprompt > ~/bin/vcprompt
chmod 755 ~/bin/vcprompt
# In ubuntu I needed to install python2 and chagne the shebang in ~/bin/vcpromt to python2
sudo apt install tmux
sudo apt install silversearcher-ag
# should I instll this way? Official docs says it leads to confusion: https://pip.pypa.io/en/stable/installation/
  # sudo apt install python3-pip
sudo apt install vim-gtk3
sudo apt install xclip # This is to make tmux copy to system clipboard
sudo apt install jq # lightweight and flexible command-line JSON processor
sudo apt install xsel # helps vim access clipboard (referred to in .vimrc)
# visidata: apt install old version. Use pip3 as per install instuctions https://www.visidata.org/install/
# https://github.com/ajeetdsouza/zoxide # z (smarter version of cd)
# lsd? - https://github.com/Peltoche/lsd
# I had to play with permissions to get this to work
  # curl -LSfs https://raw.githubusercontent.com/cantino/mcfly/master/ci/install.sh | sh -s -- --git cantino/mcfly # McFly
sudo apt install zsh
sudo apt-get install neovim
sudo apt-get install python3-neovim
sudo apt-get install fd-find
ln -s $(which fdfind) ~/.local/bin/fd

# pgAdmin 4: https://www.pgadmin.org/download/pgadmin-4-apt/

# Conda: https://docs.conda.io/en/latest/miniconda.html


