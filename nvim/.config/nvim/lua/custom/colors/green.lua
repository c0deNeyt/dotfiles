-- =========================================
-- Green Theme for Neovim
-- =========================================
-- Converted from Xresources green theme

local M = {}

-- Color palette
local colors = {
  -- Base colors
  bg = '#0d1f0d',
  fg = '#d0e1d0',

  -- Black and grey
  black = '#1a2f1a',
  bright_black = '#4a6b4a',

  -- Red
  red = '#cc6666',
  bright_red = '#ff8888',

  -- Green (primary accent)
  green = '#4dd64d',
  bright_green = '#6fff6f',

  -- Yellow
  yellow = '#a8cc3a',
  bright_yellow = '#d4ff4d',

  -- Blue
  blue = '#3a9d8f',
  bright_blue = '#4dc9b8',

  -- Magenta
  magenta = '#7aa874',
  bright_magenta = '#9fd699',

  -- Cyan
  cyan = '#3acc8f',
  bright_cyan = '#5cffb8',

  -- White
  white = '#b8d4b8',
  bright_white = '#e0f0e0',

  -- UI specific
  cursor = '#4dd64d',
  selection = '#3a7a3a',
  comment = '#5a8a5a',
  line_number = '#2d5a2d',
}

function M.setup()
  -- Clear existing highlighting
  vim.cmd 'highlight clear'
  if vim.fn.exists 'syntax_on' then
    vim.cmd 'syntax reset'
  end

  vim.o.termguicolors = true
  vim.g.colors_name = 'green'

  -- Define highlight groups
  local highlights = {
    -- Editor
    Normal = { fg = colors.fg, bg = colors.bg },
    NormalFloat = { fg = colors.fg, bg = colors.black },
    Cursor = { fg = colors.bg, bg = colors.cursor },
    CursorLine = { bg = colors.black },
    CursorLineNr = { fg = colors.bright_green, bg = colors.black, bold = true },
    LineNr = { fg = colors.line_number },
    SignColumn = { bg = colors.bg },
    ColorColumn = { bg = colors.black },

    -- Visual selection
    Visual = { bg = colors.selection },
    VisualNOS = { bg = colors.selection },

    -- Search
    Search = { fg = colors.bg, bg = colors.yellow },
    IncSearch = { fg = colors.bg, bg = colors.bright_yellow },

    -- Statusline
    StatusLine = { fg = colors.bright_green, bg = colors.black },
    StatusLineNC = { fg = colors.bright_black, bg = colors.black },

    -- Tabline
    TabLine = { fg = colors.white, bg = colors.black },
    TabLineFill = { bg = colors.black },
    TabLineSel = { fg = colors.bright_white, bg = colors.selection, bold = true },

    -- Popups
    Pmenu = { fg = colors.fg, bg = colors.black },
    PmenuSel = { fg = colors.bright_white, bg = colors.selection },
    PmenuSbar = { bg = colors.bright_black },
    PmenuThumb = { bg = colors.green },

    -- Messages
    ErrorMsg = { fg = colors.bright_red },
    WarningMsg = { fg = colors.yellow },
    MoreMsg = { fg = colors.cyan },
    Question = { fg = colors.cyan },

    -- Splits
    VertSplit = { fg = colors.bright_black },
    WinSeparator = { fg = colors.bright_black },

    -- Diff
    DiffAdd = { fg = colors.green, bg = colors.black },
    DiffChange = { fg = colors.yellow, bg = colors.black },
    DiffDelete = { fg = colors.red, bg = colors.black },
    DiffText = { fg = colors.bright_yellow, bg = colors.black },

    -- Syntax highlighting
    Comment = { fg = colors.comment, italic = true },
    Constant = { fg = colors.cyan },
    String = { fg = colors.bright_green },
    Character = { fg = colors.bright_green },
    Number = { fg = colors.cyan },
    Boolean = { fg = colors.cyan },
    Float = { fg = colors.cyan },

    Identifier = { fg = colors.blue },
    Function = { fg = colors.bright_cyan },

    Statement = { fg = colors.green },
    Conditional = { fg = colors.green },
    Repeat = { fg = colors.green },
    Label = { fg = colors.green },
    Operator = { fg = colors.magenta },
    Keyword = { fg = colors.green },
    Exception = { fg = colors.red },

    PreProc = { fg = colors.yellow },
    Include = { fg = colors.yellow },
    Define = { fg = colors.yellow },
    Macro = { fg = colors.yellow },
    PreCondit = { fg = colors.yellow },

    Type = { fg = colors.bright_blue },
    StorageClass = { fg = colors.bright_blue },
    Structure = { fg = colors.bright_blue },
    Typedef = { fg = colors.bright_blue },

    Special = { fg = colors.bright_magenta },
    SpecialChar = { fg = colors.bright_cyan },
    Tag = { fg = colors.green },
    Delimiter = { fg = colors.white },
    SpecialComment = { fg = colors.bright_black, italic = true },
    Debug = { fg = colors.red },

    Underlined = { underline = true },
    Ignore = { fg = colors.bright_black },
    Error = { fg = colors.bright_red, bold = true },
    Todo = { fg = colors.bright_yellow, bold = true },

    -- Treesitter
    ['@variable'] = { fg = colors.fg },
    ['@variable.builtin'] = { fg = colors.cyan },
    ['@parameter'] = { fg = colors.blue },
    ['@field'] = { fg = colors.blue },
    ['@property'] = { fg = colors.blue },
    ['@function'] = { fg = colors.bright_cyan },
    ['@function.builtin'] = { fg = colors.cyan },
    ['@method'] = { fg = colors.bright_cyan },
    ['@constructor'] = { fg = colors.bright_blue },
    ['@keyword'] = { fg = colors.green },
    ['@keyword.function'] = { fg = colors.green },
    ['@keyword.operator'] = { fg = colors.magenta },
    ['@string'] = { fg = colors.bright_green },
    ['@string.escape'] = { fg = colors.bright_cyan },
    ['@comment'] = { fg = colors.comment, italic = true },
    ['@type'] = { fg = colors.bright_blue },
    ['@constant'] = { fg = colors.cyan },
    ['@constant.builtin'] = { fg = colors.cyan },
    ['@number'] = { fg = colors.cyan },
    ['@boolean'] = { fg = colors.cyan },
    ['@operator'] = { fg = colors.magenta },
    ['@punctuation.bracket'] = { fg = colors.white },
    ['@punctuation.delimiter'] = { fg = colors.white },
    ['@tag'] = { fg = colors.green },
    ['@tag.attribute'] = { fg = colors.blue },
    ['@tag.delimiter'] = { fg = colors.white },
  }

  -- Apply highlights
  for group, settings in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, settings)
  end
end

return M
