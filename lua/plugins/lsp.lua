vim.diagnostic.config({
  signs          = true,
  underline      = true,
  update_in_insert = false,
  virtual_text   = true,
})

-- npm install -g typescript typescript-language-server
vim.lsp.config('ts_ls', {
  cmd          = { 'typescript-language-server', '--stdio' },
  filetypes    = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact' },
  root_markers = { 'package.json', 'tsconfig.json', 'jsconfig.json' },
})
vim.lsp.enable('ts_ls')

-- cargo install rust-analyzer
vim.lsp.config('rust_analyzer', {
  cmd          = { 'rust-analyzer' },
  filetypes    = { 'rust' },
  root_markers = { 'Cargo.toml' },
})
vim.lsp.enable('rust_analyzer')

vim.api.nvim_set_keymap('n', '<C-.>', ':lua vim.lsp.buf.references()<CR>', { noremap = true })

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'qf',
  callback = function()
    vim.keymap.set('n', '<C-v>', function()
      local entry = vim.fn.getqflist()[vim.fn.line('.')]
      vim.cmd('wincmd p')
      vim.cmd('vsplit')
      vim.api.nvim_win_set_buf(0, entry.bufnr)
      vim.api.nvim_win_set_cursor(0, { entry.lnum, entry.col - 1 })
    end, { buffer = true })
  end,
})
