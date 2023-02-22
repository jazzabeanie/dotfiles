-- Add ~/.vim and ~/.vim/after to runtimepath. Not sure why. I read this in some guide on using .vimrc file in neovim
vim.o.runtimepath = vim.o.runtimepath .. ',~/.vim'
vim.o.runtimepath = vim.o.runtimepath .. ',~/.vim/after'

-- Set packpath to runtimepath. Not sure why. I read this in some guide on using .vimrc file in neovim
vim.o.packpath = vim.o.runtimepath

-- Source ~/.vimrc
vim.cmd('source ~/.vimrc')

vim.keymap.set('n', '<leader>w', '<cmd>write<cr>', {desc = 'Save'})
