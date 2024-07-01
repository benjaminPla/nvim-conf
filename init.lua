-- neovim- curl -fLo ~/.config/nvim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim.cmd('filetype plugin indent on')
vim.cmd('filetype plugin on')
vim.o.autoindent = true
vim.o.clipboard = 'unnamedplus'
vim.o.cursorline = true
vim.o.expandtab = true
vim.o.guicursor = 'a:block,a:blinkon100'
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.laststatus = 1
vim.o.mouse = 'v'
vim.o.ruler = false
vim.o.showcmd = false
vim.o.showmode = false
vim.o.wrap = false
vim.o.number = true
vim.o.relativenumber = true
vim.o.scrolloff = 10
vim.o.shiftwidth = 4
vim.o.showmatch = true
vim.o.softtabstop = 4
vim.o.statusline = '%f'
vim.o.tabstop = 4
vim.o.wildmode = 'longest,list'
vim.cmd('syntax on')
local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/autoload')

Plug('junegunn/fzf', {['do'] = function() vim.fn['fzf#install']() end})
Plug('junegunn/fzf.vim')
Plug('morhetz/gruvbox')
Plug('sbdchd/neoformat')
Plug('APZelos/blamer.nvim')
Plug('tmsvg/pear-tree')
Plug('preservim/nerdcommenter')
Plug('nvim-lua/plenary.nvim')
Plug('sindrets/diffview.nvim')
Plug('neovim/nvim-lspconfig')

vim.call('plug#end')
if vim.o.termguicolors then
  vim.o.termguicolors = true
end

vim.cmd('colorscheme gruvbox')
vim.o.background = 'dark'
vim.api.nvim_set_keymap('n', 'HH', ':call gruvbox#hls_toggle()<CR>', { silent = true })

-- transparency
vim.cmd("highlight Normal guibg=none ctermbg=none")
vim.cmd("highlight StatusLine guibg=none ctermbg=none")
vim.cmd("highlight StatusLineNC guibg=none ctermbg=none")

vim.o.splitright = true
vim.o.splitbelow = true

-- move line or visually selected block
vim.api.nvim_set_keymap('i', '<A-j>', '<Esc>:m .+1<CR>==gi', { noremap = true })
vim.api.nvim_set_keymap('i', '<A-k>', '<Esc>:m .-2<CR>==gi', { noremap = true })
vim.api.nvim_set_keymap('v', '<A-j>', "'>+1<CR>gv=gv", { noremap = true })
vim.api.nvim_set_keymap('v', '<A-k>', "'<-2<CR>gv=gv", { noremap = true })

-- move between panes
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true })

-- Resize all tabs
vim.api.nvim_set_keymap('n', '<A-n>', ':tabdo wincmd =<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<A-h>', ':vertical resize +2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-l>', ':vertical resize -2<CR>', { noremap = true, silent = true })

-- Press i to enter insert mode, and ii to exit insert mode.
vim.api.nvim_set_keymap('i', 'ii', '<Esc>', { noremap = true })

-- Create new line while in insert mode.
vim.api.nvim_set_keymap('i', '<C-K>', '<Esc>O', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-J>', '<Esc>o', { noremap = true })

-- replace
vim.api.nvim_set_keymap('v', '<C-d>', [["hy:%s///gc<left><left><left><left>]], { noremap = true })
vim.api.nvim_set_keymap('v', '<C-d>d', [["hy:%s/<C-r>h//gc<left><left><left>]], { noremap = true })

-- fzf
vim.env.FZF_DEFAULT_COMMAND = 'find -L'
vim.api.nvim_set_keymap('n', '<C-p>', ':Files<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-f>', ':Rg<CR>', { noremap = true })
vim.g.fzf_preview_window = { 'hidden,right,70%', 'ctrl-/' }

-- neoformat
function AutoFormat()
    local filetype = vim.fn.expand('%:e') -- Get the file extension

    if filetype == 'py' then
        vim.cmd('execute "Neoformat black"')
    elseif filetype == 'rs' then
        vim.cmd('execute "Neoformat rustfmt"')
    else
        vim.cmd('execute "Neoformat prettier"')
    end
end
vim.api.nvim_set_keymap('n', '<C-T>', ':lua AutoFormat()<CR>', { noremap = true })

-- Blamer
vim.g.blamer_enabled = 1
vim.g.blamer_delay = 30
vim.g.blamer_date_format = '%d/%m/%y'
vim.g.blamer_template = '<committer> | <committer-time> | <commit-short>'

-- nerdcommenter
vim.api.nvim_set_keymap('v', '<C-/>', '<plug>NERDCommenterToggle', {})
vim.api.nvim_set_keymap('n', '<C-/>', '<plug>NERDCommenterToggle', {})
vim.g.NERDSpaceDelims = 1
vim.g.NERDTrimTrailingWhitespace = 1
vim.g.NERDToggleCheckAllLines = 1

-- Pear-Tree
vim.g.pear_tree_pairs = {
  ['('] = {closer = ')'},
  ['['] = {closer = ']'},
  ['{'] = {closer = '}'},
  ["'"] = {closer = "'"},
  ['"'] = {closer = '"'},
  ['<*>'] = {closer = '</*>', not_if = {'img', 'input'}},
}
vim.g.pear_tree_repeatable_expand = 0
vim.api.nvim_set_keymap('i', '<space>', '<Plug>(PearTreeSpace)', {})
vim.api.nvim_set_keymap('i', 'LL', '<Plug>(PearTreeJump)', {})

-- diffview
vim.api.nvim_set_keymap('n', 'Dd', ':DiffviewOpen<CR>', {})
vim.api.nvim_set_keymap('n', 'DD', ':DiffviewFileHistory<CR>', {})
vim.api.nvim_set_keymap('n', 'II', ':tabclose<CR>', {})
vim.cmd('highlight DiffAdd cterm=standout guifg=#000000 guibg=#b8bb26 gui=none')
vim.cmd('highlight DiffChange cterm=standout guifg=#000000 guibg=#83a598 gui=none')
vim.cmd('highlight DiffDelete cterm=standout guifg=#000000 guibg=#fb4934 gui=none')
vim.cmd('highlight DiffText cterm=standout guifg=#000000 guibg=#83a598 gui=none')
require('diffview').setup {
  use_icons = false,
}

-- Visual Mode highlight
vim.cmd('highlight Visual cterm=none guifg=#000000 guibg=#83a598 gui=none')

vim.cmd('highlight Normal guibg=none ctermbg=none')
vim.cmd('highlight StatusLine guibg=none ctermbg=none')
vim.cmd('highlight StatusLineNC guibg=none ctermbg=none')

-- hide netrw banner
vim.api.nvim_exec([[
  autocmd FileType netrw let g:netrw_banner = 0
]], false)


-- lsp
-- npm install -g pyright
local nvim_lsp = require('lspconfig')
nvim_lsp.pyright.setup({
    filetypes = { "python" }
})

-- npm install -g typescript typescript-language-server
nvim_lsp.tsserver.setup({
    filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" }
})

-- cargo install rust-analyzer
nvim_lsp.rust_analyzer.setup({
    filetypes = { "rust" }
})
