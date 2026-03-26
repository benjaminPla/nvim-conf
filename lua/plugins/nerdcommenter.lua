vim.g.NERDSpaceDelims          = 1
vim.g.NERDTrimTrailingWhitespace = 1
vim.g.NERDToggleCheckAllLines  = 1

vim.api.nvim_set_keymap('v', '<C-/>', '<plug>NERDCommenterToggle', {})
vim.api.nvim_set_keymap('n', '<C-/>', '<plug>NERDCommenterToggle', {})
