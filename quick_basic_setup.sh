curl -o ~/.jj_vimrc https://raw.githubusercontent.com/jazzabeanie/dotfiles/master/home/.vimrc
curl -o ~/.jj_bashrc https://raw.githubusercontent.com/jazzabeanie/dotfiles/master/home/.bashrc
curl -o ~/.jj_aliases https://raw.githubusercontent.com/jazzabeanie/dotfiles/master/home/.aliases
source ~/.jj_bashrc
source ~/.jj_aliases # jj_bash_rc may need to be modified to source jj_aliases
# These export commands may need to get copied into ~/.jj_bashrc
export MYVIMRC='~/.jj_vimrc'
export VIMINIT='source $MYVIMRC'
