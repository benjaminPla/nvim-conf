vim.cmd('filetype plugin indent on')
vim.cmd('filetype plugin on')
vim.cmd('syntax on')

vim.o.autoindent    = true
vim.o.cursorline    = true
vim.o.expandtab     = true
vim.o.guicursor     = 'a:block,a:blinkon100'
vim.o.hlsearch      = true
vim.o.incsearch     = true
vim.o.laststatus    = 1
vim.o.mouse         = 'v'
vim.o.number        = true
vim.o.relativenumber = true
vim.o.ruler         = false
vim.o.scrolloff     = 10
vim.o.shiftwidth    = 4
vim.o.showcmd       = false
vim.o.showmatch     = true
vim.o.showmode      = false
vim.o.softtabstop   = 4
vim.o.splitbelow    = true
vim.o.splitright    = true
vim.o.statusline    = '%f'
vim.o.tabstop       = 4
vim.o.wildmode      = 'longest,list'
vim.o.wrap          = false

vim.opt.diffopt:append('algorithm:histogram')
vim.opt.diffopt:append('indent-heuristic')
vim.opt.fillchars:append({ diff = ' ' })

vim.api.nvim_exec([[
  autocmd FileType netrw let g:netrw_banner = 0
  autocmd FileType netrw let g:netrw_browse_split = 0
  autocmd FileType netrw nmap <buffer> <C-v> v
]], false)
