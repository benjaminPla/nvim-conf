-- Define the color palette
colors = {
  bg          = "#282828",
  bg_dark     = "#3c3836",
  fg          = "#ebdbb2",
  faded       = "#928374",
  soft_blue   = "#83a598",
  soft_red    = "#fb4934",
  soft_yellow = "#fabd2f",
  soft_green  = "#b8bb26",
  soft_pink   = "#d3869b",
  soft_teal   = "#8ec07c",
  soft_purple = "#d3869b",
  soft_orange = "#fe8019",
  comment     = "#928374",
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
vim.g.colors_name = "theme_0"

-- UI
highlight("Normal",       { fg = colors.fg, bg = colors.bg })
highlight("LineNr",       { fg = colors.faded, bg = colors.bg_dark })
highlight("CursorLineNr", { fg = colors.soft_yellow, bg = colors.bg_dark })
highlight("VertSplit",    { fg = colors.bg_dark })
highlight("StatusLine",   { fg = colors.fg, bg = colors.bg_dark })
highlight("CursorLine",   { bg = colors.bg_dark })
highlight("Visual",       { bg = "#504945" })
highlight("Directory",    { fg = colors.soft_purple })

-- Syntax
highlight("Comment",      { fg = colors.comment, italic = true })
highlight("Constant",     { fg = colors.soft_yellow })
highlight("String",       { fg = colors.soft_green })
highlight("Character",    { fg = colors.soft_green })
highlight("Number",       { fg = colors.soft_orange })
highlight("Boolean",      { fg = colors.soft_orange })
highlight("Float",        { fg = colors.soft_orange })
highlight("Identifier",   { fg = colors.fg })
highlight("Function",     { fg = colors.soft_blue })
highlight("Statement",    { fg = colors.soft_purple })
highlight("Conditional",  { fg = colors.soft_purple })
highlight("Repeat",       { fg = colors.soft_purple })
highlight("Label",        { fg = colors.soft_blue })
highlight("Operator",     { fg = colors.fg })
highlight("Keyword",      { fg = colors.soft_purple })
highlight("Exception",    { fg = colors.soft_red })
highlight("PreProc",      { fg = colors.soft_orange })
highlight("Include",      { fg = colors.soft_orange })
highlight("Define",       { fg = colors.soft_orange })
highlight("Macro",        { fg = colors.soft_orange })
highlight("PreCondit",    { fg = colors.soft_orange })
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
highlight("DiffAdd",      { bg = "#3d4c2b" })
highlight("DiffDelete",   { bg = "#4c2b2b" })
highlight("DiffChange",   { bg = "#3d3a2b" })
highlight("DiffText",     { bg = "#504945" })

-- Extra for JS/TS/Rust classes and methods
highlight("TSClass",      { fg = colors.soft_blue, bold = true })
highlight("TSConstructor",{ fg = colors.soft_purple })
highlight("TSMethod",     { fg = colors.soft_blue })
highlight("TSProperty",   { fg = colors.fg })
highlight("TSFunction",   { fg = colors.soft_blue })
highlight("TSKeyword",    { fg = colors.soft_purple })
highlight("TSString",     { fg = colors.soft_green })
highlight("TSNumber",     { fg = colors.soft_orange })
highlight("TSBoolean",    { fg = colors.soft_orange })
highlight("TSError",      { fg = colors.soft_red, bold = true })

-- Return the colors table so it can be used in other files
return colors
