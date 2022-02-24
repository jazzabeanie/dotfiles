mkdir ~/.vim
mkdir ~/.vim/autoload
mkdir ~/.vim/bundle
mkdir ~/.vim/colors
curl https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim -o ~/.vim/autoload/pathogen.vim
curl https://raw.githubusercontent.com/jnurmine/Zenburn/master/colors/zenburn.vim -o ~/.vim/colors/zenburn.vim
git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim
git clone https://github.com/rkulla/pydiction.git ~/.vim/bundle/pydiciton
git clone git://github.com/jiangmiao/auto-pairs.git ~/.vim/bundle/auto-pairs
git clone https://github.com/vim-airline/vim-airline.git ~/.vim/bundle/vim-airline
git clone https://github.com/airblade/vim-gitgutter.git ~/.vim/bundle/vim-gitgutter
git clone https://github.com/xolox/vim-misc ~/.vim/bundle/vim-misc
git clone https://github.com/xolox/vim-notes.git ~/.vim/bundle/vim-notes
git clone https://github.com/tpope/vim-surround.git ~/.vim/bundle/vim-surround
git clone --recurse-submodules https://github.com/python-mode/python-mode ~/.vim/bundle/python-mode
git clone https://github.com/godlygeek/tabular.git ~/.vim/bundle/tabular
git clone https://github.com/plasticboy/vim-markdown.git ~/.vim/bundle/tabular/vim-markdown
# https://github.com/vim-autoformat/vim-autoformat?
  # do I also need https://github.com/hhatto/autopep8 then?
