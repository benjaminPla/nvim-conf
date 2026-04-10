local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/autoload')

Plug('APZelos/blamer.nvim')
Plug('nvim-mini/mini.align')
Plug('HerringtonDarkholme/yats.vim')
Plug('junegunn/fzf', { ['do'] = function() vim.fn['fzf#install']() end })
Plug('junegunn/fzf.vim')
Plug('neovim/nvim-lspconfig')
Plug('nvim-lua/plenary.nvim')
Plug('preservim/nerdcommenter')
Plug('sbdchd/neoformat')
Plug('sindrets/diffview.nvim')
Plug('tmsvg/pear-tree')
vim.call('plug#end')
