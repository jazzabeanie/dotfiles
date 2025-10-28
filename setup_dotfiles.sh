# mv ~/.bashrc ~/.bashrc_backup
ln -f -s ~/.dotfiles/home/.aliases ~/.aliases
ln -f -s ~/.dotfiles/home/.bash_profile ~/.bash_profile
ln -f -s ~/.dotfiles/home/.bashrc ~/.bashrc
ln -f -s ~/.dotfiles/home/.git-completion.bash ~/.git-completion.bash
ln -f -s ~/.dotfiles/home/.bin ~/.bin
ln -f -s ~/.dotfiles/home/.gitconfig ~/.gitconfig
ln -f -s ~/.dotfiles/home/.gitignore ~/.gitignore
ln -f -s ~/.dotfiles/home/.inputrc ~/.inputrc
ln -f -s ~/.dotfiles/home/.tmux.conf ~/.tmux.conf
ln -f -s ~/.dotfiles/home/.vimrc ~/.vimrc
ln -f -s ~/.dotfiles/home/ssh_config ~/.ssh/config
ln -f -s ~/.dotfiles/home/.direnvrc ~/.direnvrc
ln -f -s ~/.dotfiles/home/.zshrc ~/.zshrc
ln -f -s ~/.dotfiles/home/.p10k.zsh ~/.p10k.zsh
# Use LazyVim to manage config instead
# ln -f -s ~/.dotfiles/home/init.vim ~/.config/nvim/init.vim
mkdir -p ~/.config
mkdir -p ~/.config/alacritty
ln -f -s ~/.dotfiles/home/alacritty.yml ~/.config/alacritty/alacritty.yml
ln -f -s ~/.dotfiles/home/ripgreprc ~/.config/ripgreprc
ln -f -s ~/.dotfiles/home/.phoenix.js ~/.phoenix.js
mkdir -p ~/.config/vifm
ln -f -s ~/.dotfiles/home/vifmrc ~/.config/vifm/vifmrc
mkdir -p ~/.config/ranger
ln -f -s ~/.dotfiles/home/rc.conf ~/.config/ranger/rc.conf
# mkdir -p ~/.config/cheat
# ln -f -s ~/.dotfiles/home/cheat_config.yml ~/.config/cheat/conf.yml

mkdir -p ~/.local/bin
mkdir -p ~/temp
mkdir -p ~/Workspace
git clone git@github.com:jjohnston-aims/TODO.git ~/TODO
git clone https://github.com/zsh-users/zsh-autosuggestions /home/jared/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/Aloxaf/fzf-tab /home/jared/.oh-my-zsh/custom/plugins/fzf-tab
