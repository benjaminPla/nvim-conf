local M = {}
local highlights = require('colors.highlights')

local themes = {
  [0] = 'colors.theme_0',
  [1] = 'colors.theme_1',
  [2] = 'colors.theme_2',
}

function M.switch(n)
  local mod = themes[tonumber(n)]
  if not mod then
    vim.notify('Theme ' .. n .. ' not found. Available: 0, 1, 2', vim.log.levels.ERROR)
    return
  end
  -- Bust the require cache so re-sourcing works cleanly
  package.loaded[mod] = nil
  local palette = require(mod)
  highlights.apply(palette)
  vim.notify('Switched to theme ' .. n, vim.log.levels.INFO)
end

-- :Theme <n>
vim.api.nvim_create_user_command('Theme', function(opts)
  M.switch(opts.args)
end, { nargs = 1 })

-- Load default theme on startup
local palette = require(themes[0])
highlights.apply(palette)

return palette
