require('options')
require('plugins')

vim.o.termguicolors = true
colors = require('colors')

require('keymaps')
require('plugins.fzf')
require('plugins.lsp')
require('plugins.diffview')
require('plugins.neoformat')
require('plugins.blamer')
require('plugins.nerdcommenter')
require('plugins.pear_tree')
require('plugins.align')
