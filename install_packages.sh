# sudo mv /etc/apt/preferences.d/nosnap.pref ~/Documents/nosnap.pref.backup
# sudo apt update
# now restart then run `sudo apt install snapd`

sudo add-apt-repository ppa:aos1/diff-so-fancy
sudo add-apt-repository ppa:phoerious/keepassxc
sudo apt update
# curl -sL https://github.com/jazzabeanie/vcprompt/raw/master/bin/vcprompt > ~/bin/vcprompt
# chmod 755 ~/bin/vcprompt
# In ubuntu I needed to install python2 and chagne the shebang in ~/bin/vcpromt to python2
sudo apt install --yes neovim
sudo apt install --yes tmux
# sudo apt install silversearcher-ag  # superseded by ripgrep
sudo apt install --yes ripgrep
sudo apt install --yes direnv
sudo apt install --yes zoxide
# should I install this way? Official docs says it leads to confusion: https://pip.pypa.io/en/stable/installation/
  # sudo apt install python3-pip
  # Instead use the get-pip.py script on the docs: https://pip.pypa.io/en/stable/installation/
sudo apt install --yes xclip # This is to make tmux copy to system clipboard
sudo apt install --yes jq # lightweight and flexible command-line JSON processor
sudo apt install --yes xsel # helps vim access clipboard (referred to in .vimrc)
sudo apt install --yes libncursesw5-dev # required for vifm: https://github.com/vifm/vifm/blob/master/INSTALL
sudo apt install --yes build-essential
sudo apt install --yes zip
sudo apt install --yes libreadline-dev # required for `make` to work I think (did before building nnn from source anyway)
sudo apt install --yes pkg-config # required for `make` to work I think (did before building nnn from source anyway)
sudo apt install --yes keepassxc

# visidata: apt install old version. Use pip3 as per install instuctions https://www.visidata.org/install/
# https://github.com/ajeetdsouza/zoxide # z (smarter version of cd)
# lsd? - https://github.com/Peltoche/lsd
# I had to play with permissions to get this to work
  # curl -LSfs https://raw.githubusercontent.com/cantino/mcfly/master/ci/install.sh | sh -s -- --git cantino/mcfly # McFly
sudo apt install --yes zsh
sudo apt-get install --yes fd-find
mkdir -p ~/.local
mkdir -p ~/.local/bin
ln -s $(which fdfind) ~/.local/bin/fd

# pgAdmin 4: https://www.pgadmin.org/download/pgadmin-4-apt/

# Conda: https://docs.conda.io/en/latest/miniconda.html

# diff-so-fancy
sudo apt install --yes diff-so-fancy
