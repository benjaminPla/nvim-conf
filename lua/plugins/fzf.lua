vim.env.FZF_DEFAULT_COMMAND = 'find -L . -not -path "*/target/*" -not -path "*/node_modules/*"'

vim.g.fzf_preview_window = { 'hidden,right,70%', 'alt-/' }
vim.g.fzf_action = {
  ['ctrl-v'] = 'vsplit',
  ['return'] = 'edit',
}

vim.api.nvim_set_keymap('n', '<C-p>', ':Files<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-f>', ':Rg<CR>',   { noremap = true })
