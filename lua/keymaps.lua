local map = vim.api.nvim_set_keymap
local nore = { noremap = true }
local nore_silent = { noremap = true, silent = true }

-- Toggle highlight
vim.keymap.set('n', 'HH', function()
  vim.o.hlsearch = not vim.o.hlsearch
end, { desc = "Toggle hlsearch" })

-- Yank to system clipboard
map('n', 'y', '"+y', nore_silent)
map('v', 'y', '"+y', nore_silent)
-- Paste without overwriting register
map('x', 'p', '"_dP', nore_silent)

-- Move lines
map('i', '<A-j>', '<Esc>:m .+1<CR>==gi', nore)
map('i', '<A-k>', '<Esc>:m .-2<CR>==gi', nore)
map('v', '<A-j>', "'>+1<CR>gv=gv",       nore)
map('v', '<A-k>', "'<-2<CR>gv=gv",       nore)

-- Navigate panes
map('n', '<C-h>', '<C-w>h', nore)
map('n', '<C-j>', '<C-w>j', nore)
map('n', '<C-k>', '<C-w>k', nore)
map('n', '<C-l>', '<C-w>l', nore)

-- Resize splits
map('n', '<A-n>', ':tabdo wincmd =<CR>',       nore)
map('n', '<A-h>', ':vertical resize +2<CR>',   nore_silent)
map('n', '<A-l>', ':vertical resize -2<CR>',   nore_silent)
map('n', '<A-k>', ':horizontal resize +2<CR>', nore_silent)
map('n', '<A-j>', ':horizontal resize -2<CR>', nore_silent)

-- New line from insert mode
map('i', '<C-K>', '<Esc>O', nore)
map('i', '<C-J>', '<Esc>o', nore)

-- Replace selection
vim.keymap.set('v', '<C-d>', function()
  local left = vim.api.nvim_replace_termcodes('<Left>', true, false, true)
  vim.fn.feedkeys(":s///gc" .. string.rep(left, 4), 'n')
end, { noremap = true })
map('v', '<C-d>d', [["hy:%s/<C-r>h//gc<left><left><left>]], nore)

-- Section line macro
local function section_line(text)
  local total_width = 80
  local prefix = "// ── " .. text .. " "
  local remaining = total_width - #prefix
  if remaining < 0 then return prefix:sub(1, total_width) end
  return prefix .. string.rep("─", remaining)
end

vim.api.nvim_create_user_command("Section", function(opts)
  vim.api.nvim_put({ section_line(opts.args) }, "l", true, true)
end, { nargs = 1 })

