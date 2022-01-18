# sudo apt install vim-gtk3 # TODO: move this into the snaps install script
sudo mv /etc/apt/preferences.d/nosnap.pref ~/Documents/nosnap.pref.backup
sudo apt update
# now restart then run `sudo apt install snapd`

curl -sL https://github.com/jazzabeanie/vcprompt/raw/master/bin/vcprompt > ~/bin/vcprompt
chmod 755 ~/bin/vcprompt
sudo apt install tmux
sudo apt install silversearcher-ag
# should I instll this way? Official docs says it leads to confusion: https://pip.pypa.io/en/stable/installation/
  # sudo apt install python3-pip
