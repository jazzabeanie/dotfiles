# sudo apt install vim-gtk3 # TODO: move this into the snaps install script
sudo mv /etc/apt/preferences.d/nosnap.pref ~/Documents/nosnap.pref.backup
sudo apt update
# now restart then run `sudo apt install snapd`
