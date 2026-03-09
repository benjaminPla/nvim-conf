-- Define the color palette
colors = {
  -- Backgrounds
  bg            = "#0f172a",
  bg_dark       = "#111827",
  panel         = "#0b1220",
  cursorline    = "#1f2937",
  visual_bg     = "#1e293b",
  visual_select = "#243042",

  -- Foreground
  fg            = "#e5e7eb",
  faded         = "#64748b",
  comment       = "#64748b",

  -- Syntax
  keyword       = "#c084fc",
  func          = "#60a5fa",
  string        = "#34d399",
  number        = "#f59e0b",
  type          = "#22d3ee",
  operator      = "#f472b6",
  constant      = "#fbbf24",
  variable      = "#e5e7eb",
  special       = "#60a5fa",
  exception     = "#ef4444",

  -- Diagnostics
  error         = "#ef4444",
  warning       = "#f59e0b",
  info          = "#38bdf8",
  hint          = "#10b981",

  -- Diff
  diff_add      = "#052e2b",
  diff_delete   = "#3f1d1d",
  diff_change   = "#1e293b",
  diff_text     = "#243042",

  -- Extras
  black         = "#000000",
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
highlight("CursorLineNr", { fg = colors.constant, bg = colors.bg_dark })
highlight("VertSplit",    { fg = colors.bg_dark })
highlight("StatusLine",   { fg = colors.fg, bg = colors.bg_dark })
highlight("CursorLine",   { bg = colors.cursorline })
highlight("Visual",       { bg = colors.visual_bg })
highlight("Directory",    { fg = colors.func })

-- Syntax
highlight("Comment",      { fg = colors.comment, italic = true })
highlight("Constant",     { fg = colors.constant })
highlight("String",       { fg = colors.string })
highlight("Character",    { fg = colors.string })
highlight("Number",       { fg = colors.number })
highlight("Boolean",      { fg = colors.number })
highlight("Float",        { fg = colors.number })
highlight("Identifier",   { fg = colors.variable })
highlight("Function",     { fg = colors.func })
highlight("Statement",    { fg = colors.keyword })
highlight("Conditional",  { fg = colors.keyword })
highlight("Repeat",       { fg = colors.keyword })
highlight("Label",        { fg = colors.keyword })
highlight("Operator",     { fg = colors.operator })
highlight("Keyword",      { fg = colors.keyword })
highlight("Exception",    { fg = colors.exception })
highlight("PreProc",      { fg = colors.type })
highlight("Include",      { fg = colors.type })
highlight("Define",       { fg = colors.type })
highlight("Macro",        { fg = colors.type })
highlight("PreCondit",    { fg = colors.type })
highlight("Type",         { fg = colors.type })
highlight("StorageClass", { fg = colors.type })
highlight("Structure",    { fg = colors.type })
highlight("Typedef",      { fg = colors.type })
highlight("Special",      { fg = colors.special })
highlight("SpecialComment", { fg = colors.comment, italic = true })
highlight("Todo",         { fg = colors.constant, bold = true })
highlight("Underlined",   { underline = true })
highlight("Error",        { fg = colors.error, bg = colors.bg_dark })
highlight("WarningMsg",   { fg = colors.warning })

-- Diff
highlight("DiffAdd",      { bg = colors.diff_add })
highlight("DiffDelete",   { bg = colors.diff_delete })
highlight("DiffChange",   { bg = colors.diff_change })
highlight("DiffText",     { bg = colors.diff_text })

return colors
