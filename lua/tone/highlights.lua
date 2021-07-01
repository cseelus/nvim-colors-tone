local utils = require('tone.utils')

-- General UI
local general_ui = {
  Normal = { fg = c.toneBase1, bg = c.toneBase8 },
  NormalPopup = {
    fg = c.fg_highlight,
    bg = c.bg_popup,
  },
  NormalPopover = {
    fg = c.fg_highlight,
    bg = c.bg_popup,
  },
  NormalPopupPrompt = {
    fg = c.toneBase7,
    bg = c.bg_popup,
    gui = 'bold',
  },
  NormalPopupSubtle = {
    fg = c.base6,
    bg = c.bg_popup,
  },
  EndOfBuffer = { fg = c.bg, bg = c.bg },

  Visual = { bg = c.toneSap },
  VisualBold = { bg = c.toneSap, gui = 'bold' },

  LineNr = { fg = c.toneBase5, bg = c.bg },
  Cursor = { bg = c.water },
  CursorLine = { bg = c.bg_highlight },
  CursorLineNr = { fg = c.toneBase3 },
  CursorColumn = { bg = c.bg_highlight },

  Folded = { fg = c.toneBase5, bg = c.bg_highlight },
  FoldColumn = { fg = c.fg_alt, bg = c.bg },
  SignColumn = { bg = c.bg },
  ColorColumn = { bg = c.bg_highlight },

  IndentGuide = { fg = toneBase6 },
  IndentGuideEven = { fg = toneBase6 },
  IndentGuideOdd = { fg = toneBase6 },

  TermCursor = { fg = c.fg, gui = 'reverse' },
  TermCursorNC = { fg = c.fg_alt, gui = 'reverse' },
  TermNormal = { fg = c.fg, bg = c.bg },
  TermNormalNC = { fg = c.fg, bg = c.bg },

  WildMenu = { fg = c.fg, bg = c.dark_water },
  Separator = { fg = c.fg_alt },
  VertSplit = { fg = toneBase6, bg = c.bg },

  TabLine = {
    fg = c.toneBase7,
    bg = c.bg_alt,
    gui = 'bold',
  },
  TabLineSel = { fg = c.water, bg = c.bg, gui = 'bold' },
  TabLineFill = { bg = c.base1, gui = 'bold' },
}
utils.apply_highlight(general_ui)

-- Search, Highlight. Conceal, Messages
local search_high_ui = {
  Search = { fg = c.toneBase8, bg = c.toneSap, gui = 'bold' },
  Substitute = { fg = c.red, gui = 'strikethrough,bold' },
  IncSearch = { fg = c.fg, bg = c.dark_water, gui = 'bold' },
  IncSearchCursor = { gui = 'reverse' },

  Conceal = { fg = toneBase6, gui = 'none' },
  SpecialKey = { fg = c.toneAubergine, gui = 'bold' },
  NonText = { fg = c.fg_alt, gui = 'bold' },
  MatchParen = { fg = c.red, gui = 'bold' },
  Whitespace = { fg = toneBase5 },

  Highlight = { bg = c.toneSap },
  HighlightSubtle = { bg = c.bg_highlighted },

  Question = { fg = c.green, gui = 'bold' },

  File = { fg = c.fg },
  Directory = { fg = c.toneAubergine, gui = 'bold' },
  Title = { fg = c.toneAubergine, gui = 'bold' },

  Bold = { gui = 'bold' },
  Emphasis = { fg = c.green, gui = 'bold' },
}
utils.apply_highlight(search_high_ui)

-- Text levels
local text_colors = {
  Normal = fg,
  Info = water,
  Success = green,
  Warning = yellow,
  Debug = yellow,
  Error = red,
  Special = aubergine,
  Muted = toneBase6,
}

for key, _ in pairs(text_colors) do
  utils.apply_highlight({
    ['Text' .. key] = {
      fg = c.text_colors[key],
    },
  })
  utils.apply_highlight({
    ['Text' .. key .. 'Bold'] = {
      fg = c.text_colors[key],
      gui = 'bold',
    },
  })
end

utils.high_link('Msg', 'TextSuccess')
utils.high_link('MoreMsg', 'TextInfo')
utils.high_link('WarningMsg', 'TextWarning')
utils.high_link('Error', 'TextError')
utils.high_link('ErrorMsg', 'TextError')
utils.high_link('ModeMsg', 'TextSpecial')
utils.high_link('Todo', 'TextWarningBold')

-- Main Syntax
local main_syntax = {
  Tag = { fg = c.toneBase1, gui = 'bold' },
  Link = { fg = c.toneBase1, sp = 'undercurl' },
  URL = { fg = c.toneBase1, sp = 'undercurl' },
  Underlined = { fg = c.toneBase1, sp = 'underline' },

  Comment = { fg = c.toneBase5, gui = 'italic' },
  CommentBold = { fg = c.toneBase5, gui = 'bold' },
  SpecialComment = { fg = c.toneBase3, gui = 'bold' },

  Macro = { fg = c.toneAubergine },
  Define = { fg = c.toneAubergine, gui = 'bold' },
  Include = { fg = c.toneAubergine },
  PreProc = { fg = c.toneAubergine, gui = 'bold' },
  PreCondit = { fg = c.toneAubergine, gui = 'bold' },

  Label = { fg = c.toneAubergine },
  Repeat = { fg = c.toneAubergine },
  Keyword = { fg = c.tonePurple },
  Operator = { fg = c.toneBase2 },
  Delimiter = { fg = c.toneBase3 },
  Statement = { fg = c.toneAubergine },
  Exception = { fg = c.toneAubergine },
  Conditional = { fg = c.toneAubergine },

  Variable = { fg = toneSky },
  VariableBuiltin = { fg = toneSky, gui = 'bold' },
  Constant = { fg = c.toneWater, gui = 'bold' },

  Number = { fg = c.toneWater },
  Float = { fg = c.toneWater },
  Boolean = { fg = c.toneWater, gui = 'bold' },
  Enum = { fg = c.toneWater },

  Character = { fg = c.toneAubergine, gui = 'bold' },
  SpecialChar = { fg = c.toneBase3, gui = 'bold' },

  String = { fg = c.toneTurquoise },
  StringDelimiter = { fg = c.toneTurquoise },

  Special = { fg = c.toneAubergine },
  SpecialBold = { fg = c.toneAubergine, gui = 'bold' },

  Field = { fg = c.toneAubergine },
  Argument = { fg = c.light_sky },
  Attribute = { fg = c.light_sky },
  Identifier = { fg = c.light_sky },
  Property = { fg = c.toneSky },
  Function = { fg = c.toneSky },
  FunctionBuiltin = { fg = c.light_sky, gui = 'bold' },
  KeywordFunction = { fg = c.light_bg },
  Method = { fg = c.toneAubergine },

  Type = { fg = c.green, gui = 'bold' },
  TypeBuiltin = { fg = c.yellow, gui = 'bold' },
  StorageClass = { fg = c.light_bg },
  Class = { fg = c.light_bg },
  Structure = { fg = c.light_bg },
  Typedef = { fg = c.light_bg },

  Regexp = { fg = '#dd0093' },
  RegexpSpecial = { fg = '#a40073' },
  RegexpDelimiter = { fg = '#540063', gui = 'bold' },
  RegexpKey = { fg = '#5f0041', gui = 'bold' },
}

utils.apply_highlight(main_syntax)
utils.high_link('CommentURL', 'URL')
utils.high_link('CommentLabel', 'CommentBold')
utils.high_link('CommentSection', 'CommentBold')
utils.high_link('Noise', 'Comment')

-- Diff
local diff = {
  diffLine = { fg = c.base8, bg = c.diff_info_bg1 },
  diffSubName = { fg = c.base8, bg = c.diff_info_bg1 },

  DiffAdd = { bg = c.diff_add_bg1 },
  DiffChange = { bg = c.diff_add_bg1 },
  DiffText = { bg = c.diff_add_bg0 },
  DiffDelete = { bg = c.gh_danger_bg0 },

  DiffAdded = { fg = c.diff_add_fg0, bg = c.diff_add_bg1 },
  DiffModified = { fg = c.fg, bg = c.diff_info_bg0 },
  DiffRemoved = { fg = c.gh_danger_fg0, bg = c.gh_danger_bg1 },

  DiffAddedGutter = { fg = c.diff_add_fg, gui = 'bold' },
  DiffModifiedGutter = { fg = c.diff_info_fg, gui = 'bold' },
  DiffRemovedGutter = { fg = c.gh_danger_fg, gui = 'bold' },

  DiffAddedGutterLineNr = { fg = toneBase6 },
  DiffModifiedGutterLineNr = { fg = toneBase6 },
  DiffRemovedGutterLineNr = { fg = toneBase6 },
}
utils.high_clear('DiffAdd')
utils.high_clear('DiffChange')
utils.high_clear('DiffText')
utils.high_clear('DiffDelete')
utils.apply_highlight(diff)

-- Markdown
local markdown = {
  markdownCode = { bg = c.bg_highlight  },
  markdownCodeBlock = { bg = c.bg_highlight  },
  markdownH1 = { gui = "bold"  },
  markdownH2 = { gui = "bold"  },
  markdownLinkText = { gui = "underline"  },
}
utils.apply_highlight(markdown)

-- Plugins

-- Gitgutter
utils.high_link('GitGutterAdd', 'DiffAddedGutter')
utils.high_link('GitGutterChange', 'DiffModifiedGutter')
utils.high_link('GitGutterDelete', 'DiffRemovedGutter')
utils.high_link('GitGutterChangeDelete', 'DiffModifiedGutter')
utils.high_link('GitGutterAddLineNr', 'DiffAddedGutterLineNr')
utils.high_link('GitGutterChangeLineNr', 'DiffModifiedGutterLineNr')
utils.high_link('GitGutterDeleteLineNr', 'DiffRemovedGutterLineNr')
utils.high_link('GitGutterChangeDeleteLineNr', 'DiffModifiedGutterLineNr')

-- Gitsigns
utils.high_link('GitSignsAdd', 'DiffAddedGutter')
utils.high_link('GitSignsChange', 'DiffModifiedGutter')
utils.high_link('GitSignsDelete', 'DiffRemovedGutter')
utils.high_link('GitSignsChangeDelete', 'DiffModifiedGutter')

-- Telescope
if vim.g.tone_telescope_highlights then
  local telescope = {
    TelescopeSelection = { fg = c.yellow, gui = 'bold' },
    TelescopeSelectionCaret = { fg = c.light_bg and orange or water },
    TelescopeMultiSelection = { fg = toneBase6 },
    TelescopeNormal = { fg = c.fg },
    TelescopeMatching = { fg = c.green, gui = 'bold' },
    TelescopePromptPrefix = { fg = c.light_bg and orange or water },
    TelescopeBorder = { fg = c.light_bg and orange or water },
    TelescopePromptBorder = { fg = c.light_bg and orange or water },
    TelescopeResultsBorder = { fg = c.light_bg and orange or water },
    TelescopePreviewBorder = { fg = c.light_bg and orange or water },
  }
  utils.apply_highlight(telescope)
  utils.high_link('TelescopePrompt', 'TelescopeNormal')
end

-- NvimTree
local nvim_tree = {
  NvimTreeFolderName = { fg = c.light_bg and base9 or water, gui = 'bold' },
  NvimTreeRootFolder = { fg = c.green },
  NvimTreeEmptyFolderName = { fg = c.fg_alt, gui = 'bold' },
  NvimTreeSymlink = { fg = c.fg, sp = 'underline' },
  NvimTreeExecFile = { fg = c.green, gui = 'bold' },
  NvimTreeImageFile = { fg = c.light_bg and orange or water },
  NvimTreeOpenedFile = { fg = c.fg_alt },
  NvimTreeSpecialFile = { fg = c.fg, sp = 'underline' },
  NvimTreeMarkdownFile = { fg = c.fg, sp = 'underline' },
}

utils.apply_highlight(nvim_tree)
utils.high_link('NvimTreeGitDirty', 'DiffModifiedGutter')
utils.high_link('NvimTreeGitStaged', 'DiffModifiedGutter')
utils.high_link('NvimTreeGitMerge', 'DiffModifiedGutter')
utils.high_link('NvimTreeGitRenamed', 'DiffModifiedGutter')
utils.high_link('NvimTreeGitNew', 'DiffAddedGutter')
utils.high_link('NvimTreeGitDeleted', 'DiffRemovedGutter')

utils.high_link('NvimTreeIndentMarker', 'IndentGuide')
utils.high_link('NvimTreeOpenedFolderName', 'NvimTreeFolderName')

-- Dashboard
local dashboard = {
  dashboardHeader = { fg = '#586268' },
  dashboardCenter = { fg = c.light_bg and orange or water },
  dashboardShortcut = { fg = '#9788b9' },
}
utils.apply_highlight(dashboard)
utils.high_link('dashboardFooter', 'dashboardHeader')

-- LSP
local msg_underline = {
  ErrorMsgUnderline = { fg = c.red, sp = 'undercurl' },
  WarningMsgUnderline = { fg = c.yellow, sp = 'undercurl' },
  MoreMsgUnderline = { fg = c.water, sp = 'undercurl' },
  MsgUnderline = { fg = c.green, sp = 'undercurl' },
}

utils.apply_highlight(msg_underline)
utils.high_link('LspDiagnosticsFloatingError', 'ErrorMsg')
utils.high_link('LspDiagnosticsFloatingWarning', 'Warning')
utils.high_link('LspDiagnosticsFloatingInformation', 'MoreMsg')
utils.high_link('LspDiagnosticsFloatingHint', 'Msg')
utils.high_link('LspDiagnosticsDefaultError', 'ErrorMsg')
utils.high_link('LspDiagnosticsDefaultWarning', 'WarningMsg')
utils.high_link('LspDiagnosticsDefaultInformation', 'MoreMsg')
utils.high_link('LspDiagnosticsDefaultHint', 'Msg')
utils.high_link('LspDiagnosticsVirtualTextError', 'ErrorMsg')
utils.high_link('LspDiagnosticsVirtualTextWarning', 'WarningMsg')
utils.high_link('LspDiagnosticsVirtualTextInformation', 'MoreMsg')
utils.high_link('LspDiagnosticsVirtualTextHint', 'Msg')
utils.high_link('LspDiagnosticsUnderlineError', 'ErrorMsgUnderline')
utils.high_link('LspDiagnosticsUnderlineWarning', 'WarningMsgUnderline')
utils.high_link('LspDiagnosticsUnderlineInformation', 'MoreMsgUnderline')
utils.high_link('LspDiagnosticsUnderlineHint', 'MsgUnderline')
utils.high_link('LspDiagnosticsSignError', 'ErrorMsg')
utils.high_link('LspDiagnosticsSignWarning', 'WarningMsg')
utils.high_link('LspDiagnosticsSignInformation', 'MoreMsg')
utils.high_link('LspDiagnosticsSignHint', 'Msg')
utils.high_link('LspReferenceText', 'Bold')
utils.high_link('LspReferenceRead', 'Bold')
utils.high_link('LspReferenceWrite', 'Bold')
utils.high_link('TermCursor', 'Cursor')
utils.high_link('healthError', 'ErrorMsg')
utils.high_link('healthSuccess', 'Msg')
utils.high_link('healthWarning', 'WarningMsg')

-- LspSaga
local lspsaga = {
  SagaShadow = { bg = c.bg },
  LspSagaDiagnosticHeader = { fg = c.red },
}
utils.apply_highlight(lspsaga)
utils.high_link('LspSagaDiagnosticBorder', 'Normal')
utils.high_link('LspSagaDiagnosticTruncateLine', 'Normal')
utils.high_link('LspFloatWinBorder', 'Normal')
utils.high_link('LspSagaBorderTitle', 'Title')
utils.high_link('TargetWord', 'Error')
utils.high_link('ReferencesCount', 'Title')
utils.high_link('ReferencesIcon', 'Special')
utils.high_link('DefinitionCount', 'Title')
utils.high_link('TargetFileName', 'Comment')
utils.high_link('DefinitionIcon', 'Special')
utils.high_link('ProviderTruncateLine', 'Normal')
utils.high_link('LspSagaFinderSelection', 'Sear')
utils.high_link('DiagnosticTruncateLine', 'Normal')
utils.high_link('DiagnosticError', 'LspDiagnosticsDefaultError')
utils.high_link('DiagnosticWarning', 'LspDiagnosticsDefaultWarning')
utils.high_link('DiagnosticInformation', 'LspDiagnosticsDefaultInformation')
utils.high_link('DiagnosticHint', 'LspDiagnosticsDefaultHint')
utils.high_link('DefinitionPreviewTitle', 'Title')
utils.high_link('LspSagaShTruncateLine', 'Normal')
utils.high_link('LspSagaDocTruncateLine', 'Normal')
utils.high_link('LineDiagTuncateLine', 'Normal')
utils.high_link('LspSagaCodeActionTitle', 'Title')
utils.high_link('LspSagaCodeActionTruncateLine', 'Normal')
utils.high_link('LspSagaCodeActionContent', 'Normal')
utils.high_link('LspSagaRenamePromptPrefix', 'Normal')
utils.high_link('LspSagaRenameBorder', 'Bold')
utils.high_link('LspSagaHoverBorder', 'Bold')
utils.high_link('LspSagaSignatureHelpBorder', 'Bold')
utils.high_link('LspSagaCodeActionBorder', 'Bold')
utils.high_link('LspSagaDefPreviewBorder', 'Bold')
utils.high_link('LspLinesDiagBorder', 'Bold')

-- TreeSitter
if vim.g.tone_enable_treesitter then
  utils.high_link('TSException', 'Exception')
  utils.high_link('TSAnnotation', 'PreProc')
  utils.high_link('TSAttribute', 'Attribute')
  utils.high_link('TSConditional', 'Conditional')
  utils.high_link('TSComment', 'Comment')
  utils.high_link('TSConstructor', 'Structure')
  utils.high_link('TSConstant', 'Constant')
  utils.high_link('TSConstBuiltin', 'Constant')
  utils.high_link('TSConstMacro', 'Macro')
  utils.high_link('TSError', 'Error')
  utils.high_link('TSField', 'Field')
  utils.high_link('TSFloat', 'Float')
  utils.high_link('TSFunction', 'Function')
  utils.high_link('TSFuncBuiltin', 'FunctionBuiltin')
  utils.high_link('TSFuncMacro', 'Macro')
  utils.high_link('TSInclude', 'Include')
  utils.high_link('TSKeyword', 'Keyword')
  utils.high_link('TSKeywordFunction', 'KeywordFunction')
  utils.high_link('TSLabel', 'Label')
  utils.high_link('TSMethod', 'Method')
  utils.high_link('TSNamespa', 'Directory')
  utils.high_link('TSNumber', 'Number')
  utils.high_link('TSOperator', 'Operator')
  utils.high_link('TSParameter', 'Argument')
  utils.high_link('TSParameterReferen', 'Argument')
  utils.high_link('TSProperty', 'Property')
  utils.high_link('TSPunctDelimiter', 'Delimiter')
  utils.high_link('TSPunctBracket', 'Delimiter')
  utils.high_link('TSPunctSpecial', 'Delimiter')
  utils.high_link('TSRepeat', 'Repeat')
  utils.high_link('TSString', 'String')
  utils.high_link('TSStringRegex', 'StringDelimiter')
  utils.high_link('TSStringEscape', 'StringDelimiter')
  utils.high_link('TSTag', 'Tag')
  utils.high_link('TSTagDelimiter', 'Delimiter')
  utils.high_link('TSStrong', 'Bold')
  utils.high_link('TSURI', 'URL')
  utils.high_link('TSWarning', 'Warning')
  utils.high_link('TSDanger', 'Error')
  utils.high_link('TSType', 'Type')
  utils.high_link('TSTypeBuiltin', 'TypeBuiltin')
  utils.high_link('TSVariable', 'None')
  utils.high_link('TSVariableBuiltin', 'VariableBuiltin')
end
