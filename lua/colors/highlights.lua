local M = {}

local function hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.apply(c)
  vim.o.background = "dark"
  vim.cmd("highlight clear")
  vim.cmd("syntax reset")

  -- UI
  hl("Normal",         { fg = c.fg })
  hl("LineNr",         { fg = c.faded,    bg = c.bg_dark })
  hl("CursorLineNr",   { fg = c.constant, bg = c.bg_dark })
  hl("CursorLine",     { bg = c.cursorline })
  hl("VertSplit",      { fg = c.bg_dark })
  hl("StatusLine",     { fg = c.fg })
  hl("StatusLineNC",   {})
  hl("Visual",         { fg = c.black, bg = c.visual_select })
  hl("Directory",      { fg = c.func })

  -- Syntax
  hl("Comment",        { fg = c.comment,  italic = true })
  hl("Constant",       { fg = c.constant })
  hl("String",         { fg = c.string })
  hl("Character",      { fg = c.string })
  hl("Number",         { fg = c.number })
  hl("Boolean",        { fg = c.number })
  hl("Float",          { fg = c.number })
  hl("Identifier",     { fg = c.variable })
  hl("Function",       { fg = c.func })
  hl("Statement",      { fg = c.keyword })
  hl("Conditional",    { fg = c.keyword })
  hl("Repeat",         { fg = c.keyword })
  hl("Label",          { fg = c.keyword })
  hl("Operator",       { fg = c.operator })
  hl("Keyword",        { fg = c.keyword })
  hl("Exception",      { fg = c.exception })
  hl("PreProc",        { fg = c.type })
  hl("Include",        { fg = c.type })
  hl("Define",         { fg = c.type })
  hl("Macro",          { fg = c.type })
  hl("PreCondit",      { fg = c.type })
  hl("Type",           { fg = c.type })
  hl("StorageClass",   { fg = c.type })
  hl("Structure",      { fg = c.type })
  hl("Typedef",        { fg = c.type })
  hl("Special",        { fg = c.special })
  hl("SpecialComment", { fg = c.comment, italic = true })
  hl("Todo",           { fg = c.constant, bold = true })
  hl("Underlined",     { underline = true })
  hl("Error",          { fg = c.error, bg = c.bg_dark })
  hl("WarningMsg",     { fg = c.warning })

  -- Diff
  hl("DiffAdd",    { bg = c.diff_add })
  hl("DiffDelete", { bg = c.diff_delete })
  hl("DiffChange", { bg = c.diff_change })
  hl("DiffText",   { bg = c.diff_text })

  hl("DiffviewDiffAdd",    { link = "DiffAdd" })
  hl("DiffviewDiffDelete", { link = "DiffDelete" })
  hl("DiffviewDiffChange", { link = "DiffChange" })
  hl("DiffviewDiffText",   { link = "DiffText" })
end

return M
