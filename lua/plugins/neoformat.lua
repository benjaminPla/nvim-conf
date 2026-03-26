vim.g.neoformat_rust_rustfmt = {
  exe   = 'rustfmt',
  args  = { '--edition', '2021' },
  stdin = 1,
}

local function auto_format()
  if vim.fn.expand('%:e') == 'rs' then
    vim.cmd('Neoformat rustfmt')
  else
    vim.cmd('Neoformat prettier')
  end
end

vim.api.nvim_set_keymap('n', '<C-T>', ':lua AutoFormat()<CR>', { noremap = true })

-- expose globally so the keymap string can call it
AutoFormat = auto_format
