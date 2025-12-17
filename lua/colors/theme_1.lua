-- Define the color palette
colors = {
  bg          = "#0d1117",
  bg_dark     = "#161b22",
  fg          = "#c0caf5",
  faded       = "#565f89",
  soft_blue   = "#2ac3de",
  soft_red    = "#ff5555",
  soft_yellow = "#f1fa8c",
  soft_green  = "#50fa7b",
  soft_pink   = "#ff79c6",
  soft_teal   = "#8be9fd",
  soft_purple = "#bd93f9",
  soft_orange = "#ffb86c",
  comment     = "#6272a4",
  diff_add    = "#1a3c34",
  diff_delete = "#3c1a1a",
  diff_change = "#1a2a3c",
  diff_text   = "#2a2e5b",
  visual_bg   = "#2a2e5b",
  visual_select = "#2a2e5b",
  black       = "#000000",
}

-- Helper function to set highlights
local function highlight(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Set background mode
vim.o.background = "dark"
vim.cmd("highlight clear")
vim.cmd("syntax reset")

-- Theme name
vim.g.colors_name = "theme_1"

-- UI
highlight("Normal",       { fg = colors.fg, bg = colors.bg })
highlight("LineNr",       { fg = colors.faded, bg = colors.bg_dark })
highlight("CursorLineNr", { fg = colors.soft_purple, bg = colors.bg_dark })
highlight("VertSplit",    { fg = colors.bg_dark })
highlight("StatusLine",   { fg = colors.fg, bg = colors.bg_dark })
highlight("CursorLine",   { bg = colors.bg_dark })
highlight("Visual",       { bg = "#2a2e5b" })
highlight("Directory",    { fg = colors.soft_pink })

-- Syntax
highlight("Comment",      { fg = colors.comment, italic = true })
highlight("Constant",     { fg = colors.soft_yellow })
highlight("String",       { fg = colors.soft_green })
highlight("Character",    { fg = colors.soft_green })
highlight("Number",       { fg = colors.soft_orange })
highlight("Boolean",      { fg = colors.soft_orange })
highlight("Float",        { fg = colors.soft_orange })
highlight("Identifier",   { fg = colors.soft_pink })
highlight("Function",     { fg = colors.soft_blue })
highlight("Statement",    { fg = colors.soft_purple })
highlight("Conditional",  { fg = colors.soft_purple })
highlight("Repeat",       { fg = colors.soft_purple })
highlight("Label",        { fg = colors.soft_blue })
highlight("Operator",     { fg = colors.fg })
highlight("Keyword",      { fg = colors.soft_purple })
highlight("Exception",    { fg = colors.soft_red })
highlight("PreProc",      { fg = colors.soft_yellow })
highlight("Include",      { fg = colors.soft_yellow })
highlight("Define",       { fg = colors.soft_yellow })
highlight("Macro",        { fg = colors.soft_yellow })
highlight("PreCondit",    { fg = colors.soft_yellow })
highlight("Type",         { fg = colors.soft_teal })
highlight("StorageClass", { fg = colors.soft_teal })
highlight("Structure",    { fg = colors.soft_teal })
highlight("Typedef",      { fg = colors.soft_teal })
highlight("Special",      { fg = colors.soft_red })
highlight("SpecialComment", { fg = colors.comment, italic = true })
highlight("Todo",         { fg = colors.soft_yellow, bold = true })
highlight("Underlined",   { underline = true })
highlight("Error",        { fg = colors.soft_red, bg = colors.bg_dark })
highlight("WarningMsg",   { fg = colors.soft_yellow })

-- Diff
highlight("DiffAdd",      { bg = "#1a3c34" })
highlight("DiffDelete",   { bg = "#3c1a1a" })
highlight("DiffChange",   { bg = "#1a2a3c" })
highlight("DiffText",     { bg = "#2a2e5b" })

-- Return the colors table so it can be used in other files
return colors
