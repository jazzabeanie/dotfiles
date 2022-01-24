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
sudo apt install vim-gtk3
sudo apt install xclip # This is to make tmux copy to system clipboard
sudo apt install jq # lightweight and flexible command-line JSON processor

# # pyenv:
# # doubl check here before installing: https://github.com/pyenv/pyenv-installer
# sudo apt-get update; sudo apt-get install make build-essential libssl-dev zlib1g-dev \
#   libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
#   libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev # pyenv requirements as per https://github.com/pyenv/pyenv/wiki#suggested-build-environment
# curl https://pyenv.run | bash
# # might have to add this to .bashrc:
# #   export PATH="$HOME/.pyenv/bin:$PATH"
# #   eval "$(pyenv init --path)"
# #   eval "$(pyenv virtualenv-init -)"


