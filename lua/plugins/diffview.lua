require('diffview').setup { use_icons = false }

vim.api.nvim_set_keymap('n', 'Dd', ':DiffviewOpen<CR>',        {})
vim.api.nvim_set_keymap('n', 'DD', ':DiffviewFileHistory<CR>', {})
vim.api.nvim_set_keymap('n', 'II', ':tabclose<CR>',            {})
