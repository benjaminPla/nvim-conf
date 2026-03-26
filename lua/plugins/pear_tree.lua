vim.g.pear_tree_pairs = {
  ['(']  = { closer = ')' },
  ['[']  = { closer = ']' },
  ['{']  = { closer = '}' },
  ["'"]  = { closer = "'" },
  ['"']  = { closer = '"' },
}
vim.g.pear_tree_repeatable_expand = 0

vim.api.nvim_set_keymap('i', '<space>', '<Plug>(PearTreeSpace)', {})
vim.api.nvim_set_keymap('i', 'LL',     '<Plug>(PearTreeJump)',  {})
