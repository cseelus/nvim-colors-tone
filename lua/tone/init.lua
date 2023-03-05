-- Vim Color Scheme
-- Name:       tone
-- Maintainer: http//github.com/cseelus
-- License:    The MIT License (MIT)

local colors = require('tone.colors')
local utils = require('tone.utils')

-- Set dark or light color scheme, depending on VIM background setting
c = colors.Dark
if vim.opt.background:get() == 'light' then
  c = colors.Light
end

-- Enables pseudo-transparency for the popup-menu
if vim.opt.pumblend == 1 then
 vim.opt.pumblend = 20
end

-- General UI
local general_ui = {
  Normal = { fg = c.base1, bg = c.base8 },

  -- Dropdowns
  Pmenu = { fg = c.base1, bg = c.base7 },
  PmenuSel = { fg = c.base8, bg = c.water },
  PmenuSbar = { fg = c.base2, bg = c.base7 },
  PmenuThumb = { bg = c.base4, },

  Visual = { bg = utils.Mix(c.sap, c.base8, 0.6) },
  VisualBold = { bg = c.sap, gui = 'bold' },

  LineNr = { fg = c.base5 },
  Cursor = { bg = c.turquoise },
  CursorLine = { bg = c.base3 },
  CursorLineNr = { fg = c.base3 },
  CursorColumn = { bg = c.base3 },

  Folded = { fg = c.base5, bg = c.base4 },
  FoldColumn = { fg = c.base4, bg = c.base8 },
  SignColumn = { bg = c.base8 },
  ColorColumn = { bg = c.base6 },

  IndentGuide = { fg = c.base6 },
  IndentGuideEven = { fg = c.base6 },
  IndentGuideOdd = { fg = c.base6 },

  StatusLine = { fg = c.base3, bg = c.base7 },
  StatusLineNC = { fg = c.base5, bg = c.base7 },

  TermCursor = { fg = c.base1, gui = 'reverse' },
  TermCursorNC = { fg = c.base1_alt, gui = 'reverse' },
  TermNormal = { fg = c.base1, bg = c.base8 },
  TermNormalNC = { fg = c.base1, bg = c.base8 },

  WildMenu = { fg = c.base1, bg = c.water },
  Separator = { fg = c.base1_alt },
  VertSplit = { fg = c.base6, bg = c.base8 },

  TabLineFill = { bg = c.base6 },
  TabLine = { fg = c.base3, bg = c.base6 },
  TabLineSel = { fg = c.base2, bg = c.base8 },
}
utils.apply_highlight(general_ui)
utils.high_link('Normal', 'EndOfBuffer')

-- Search, Highlight. Conceal, Messages
local search_high_ui = {
  Search = { bg = utils.Mix(c.turquoise, c.base8, 0.7), gui = 'bold' },
  Substitute = { fg = c.aubergine, gui = 'strikethrough,bold' },
  IncSearch = { bg = utils.Mix(c.turquoise, c.base8, 0.5), gui = 'bold' },
  IncSearchCursor = { gui = 'reverse' },

  Conceal = { fg = c.base6, gui = 'none' },
  SpecialKey = { fg = c.purple, gui = 'bold' },
  NonText = { fg = c.base3 },
  MatchParen = { fg = c.base1, bg = c.base5, gui = 'bold' },
  Whitespace = { fg = c.base5 },

  Highlight = { bg = c.sap },
  HighlightSubtle = { bg = c.base6 },

  Question = { fg = c.turquoise, gui = 'bold' },

  File = { fg = c.base4 },
  Directory = { fg = c.sky },
  Title = { fg = c.turquoise, gui = 'bold' },

  Bold = { gui = 'bold' },
  Emphasis = { fg = c.turquoise, gui = 'bold' },
}
utils.apply_highlight(search_high_ui)

-- Text levels
local text_colors = {
  Normal = c.base1,
  Info = c.water,
  Success = c.leaf,
  Warning = c.gold,
  Debug = c.gold,
  Error = c.aubergine,
  Special = c.purple,
  Muted = c.base6,
}

for key, _ in pairs(text_colors) do
  utils.apply_highlight({
    ['Text' .. key] = {
      fg = text_colors[key],
    },
  })
  utils.apply_highlight({
    ['Text' .. key .. 'Bold'] = {
      fg = text_colors[key],
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
  Tag = { fg = c.base1, gui = 'bold' },
  Link = { fg = c.base1, sp = 'undercurl' },
  URL = { fg = c.base1, sp = 'undercurl' },
  Underlined = { fg = c.base1, sp = 'underline' },

  Comment = { fg = c.base3, gui = 'italic' },
  CommentBold = { fg = c.base3, gui = 'bold' },
  SpecialComment = { fg = c.base2, gui = 'bold' },

  Macro = { fg = c.aubergine },
  Define = { fg = c.base3 },
  Include = { fg = c.aubergine },
  PreProc = { fg = c.purple, gui = 'bold' },
  PreCondit = { fg = c.purple, gui = 'bold' },

  Label = { fg = c.base3 },
  Repeat = { fg = c.aubergine },
  Keyword = { fg = c.aubergine },
  Operator = { fg = c.base2 },
  Delimiter = { fg = c.base3 },
  Statement = { fg = c.sky },
  Exception = { fg = c.aubergine },
  Conditional = { fg = c.purple },

  Variable = { fg = c.base2 },
  VariableBuiltin = { fg = c.sky, gui = 'bold' },
  Constant = { fg = c.turquoise, gui = 'bold' },

  Number = { fg = c.water },
  Float = { fg = c.water },
  Boolean = { fg = c.water },
  Enum = { fg = c.water },

  Character = { fg = c.aubergine, gui = 'bold' },
  SpecialChar = { fg = c.base3, gui = 'bold' },

  String = { fg = c.turquoise },
  StringDelimiter = { fg = c.turquoise },

  Special = { fg = c.sap },
  SpecialBold = { fg = c.aubergine, gui = 'bold' },

  Field = { fg = c.aubergine },
  Argument = { fg = c.base3 },
  Attribute = { fg = c.base3 },
  Identifier = { fg = c.purple },
  Property = { fg = c.purple },
  Function = { fg = c.sky },
  FunctionBuiltin = { fg = c.sky, gui = 'bold' },
  KeywordFunction = { fg = c.sky, gui = 'italic' },
  Method = { fg = c.aubergine },

  Type = { fg = c.turquoise, gui = 'bold' },
  TypeBuiltin = { fg = c.leaf, gui = 'bold' },
  StorageClass = { fg = c.base2 },
  Class = { fg = c.base4 },
  Structure = { fg = c.purple },
  Typedef = { fg = c.base2 },

  Regexp = { fg = c.gold },
  RegexpSpecial = { fg = c.gold },
  RegexpDelimiter = { fg = c.base3, gui = 'bold' },
  RegexpKey = { fg = c.gold, gui = 'bold' },
}

utils.apply_highlight(main_syntax)
utils.high_link('CommentURL', 'URL')
utils.high_link('CommentLabel', 'CommentBold')
utils.high_link('CommentSection', 'CommentBold')
utils.high_link('Noise', 'Comment')

-- Diff
local diff = {
  diffLine = { fg = c.base8, bg = c.sky },
  diffSubName = { fg = c.base8, bg = c.sky },

  DiffAdd = { bg = utils.Mix(c.turquoise, c.base8, 0.9) },
  DiffChange = { bg = utils.Mix(c.leaf, c.base8, 0.9) },
  DiffText = { fg = c.base8, bg = c.leaf },
  DiffDelete = { bg = utils.Mix(c.aubergine, c.base8, 0.9) },

  DiffAdded = {
    fg = utils.Mix(c.turquoise, c.base8, 0.9),
    bg = utils.Mix(c.turquoise, c.base8, 0.9)
  },
  DiffModified = {
    fg = c.base1,
    bg = utils.Mix(c.sky, c.base8, 0.8)
  },
  DiffRemoved = {
    fg = utils.Mix(c.aubergine, c.base8, 0.9),
    bg = utils.Mix(c.aubergine, c.base8, 0.9)
  },

  DiffAddedGutter = { fg = c.turquoise, gui = 'bold' },
  DiffModifiedGutter = { fg = c.leaf, gui = 'bold' },
  DiffRemovedGutter = { fg = c.aubergine, gui = 'bold' },

  DiffAddedGutterLineNr = { fg = c.leaf },
  DiffModifiedGutterLineNr = { fg = c.leaf },
  DiffRemovedGutterLineNr = { fg = c.aubergine },
}
utils.high_clear('DiffAdd')
utils.high_clear('DiffChange')
utils.high_clear('DiffText')
utils.high_clear('DiffDelete')
utils.apply_highlight(diff)

-- Markdown
local markdown = {
  markdownCode = { bg = c.base6  },
  markdownCodeBlock = { bg = c.base5  },
  markdownH1 = { fg = c.turquoise, gui = "bold"  },
  markdownH2 = { fg = c.turquoise, gui = "bold"  },
  markdownH3 = { fg = c.turquoise, gui = "bold"  },
  markdownH4 = { fg = c.turquoise, gui = "bold"  },
  markdownH5 = { fg = c.turquoise, gui = "bold"  },
  markdownH6 = { fg = c.turquoise, gui = "bold"  },
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

-- Indent Blankline
local indent_blankline = {
  IndentBlanklineChar = { fg = c.base7 },
}
utils.apply_highlight(indent_blankline)

-- Plaintasks
utils.high_link('ptTask', 'Keyword')

-- Telescope
local telescope = {
  TelescopeSelection = { fg = c.base1, bg = utils.Mix(c.turquoise, c.base8, 0.8), gui = 'bold' }, -- selected item
  TelescopeSelectionCaret = { fg = c.base4 }, -- selection caret
  TelescopeMultiSelection = { fg = c.basei4 }, -- multiselections
  TelescopeNormal = { fg = c.base1 }, -- floating windows created by telescope.
  -- Border highlight groups.
  TelescopeBorder = { fg = c.base3 },
  TelescopePromptBorder = { fg = c.base3 },
  TelescopeResultsBorder= { fg = c.base3 },
  TelescopePreviewBorder = { fg = c.base3 },
  -- Used for highlighting characters that you match.
  TelescopeMatching = { fg = c.turquoise },
  -- Used for the prompt prefix
  TelescopePromptPrefix = { fg = c.base2 },
}
utils.apply_highlight(telescope)

-- NvimTree
local nvim_tree = {
  NvimTreeNormal = { fg = c.base1 },
  NvimTreeFolderName = { fg = c.base1 },
  NvimTreeFolderIcon = { fg = c.sky },
  NvimTreeRootFolder = { fg = c.base2 },
  NvimTreeEmptyFolderName = { fg = c.base1, gui = 'bold' },
  NvimTreeSymlink = { fg = c.base1, gui = 'underline' },
  NvimTreeExecFile = { fg = c.turquoise, gui = 'bold' },
  NvimTreeImageFile = { fg = c.base3 },
  NvimTreeOpenedFile = { fg = c.base1_alt },
  NvimTreeSpecialFile = { fg = c.base1, gui = 'underline' },
  NvimTreeMarkdownFile = { fg = c.base1, gui = 'underline' },
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

-- LSP
local msg_underline = {
  ErrorMsgUnderline = { fg = c.aubergine, sp = 'undercurl' },
  WarningMsgUnderline = { fg = c.sap, sp = 'undercurl' },
  MoreMsgUnderline = { fg = c.sky, sp = 'undercurl' },
  MsgUnderline = { fg = c.turquoise, sp = 'undercurl' },
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
  SagaShadow = { bg = c.base6 },
  LspSagaDiagnosticHeader = { fg = c.aubergine },
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
--utils.high_link('TSException', 'Exception')
--utils.high_link('TSAnnotation', 'PreProc')
--utils.high_link('TSAttribute', 'Attribute')
--utils.high_link('TSConditional', 'Conditional')
--utils.high_link('TSComment', 'Comment')
utils.high_link('TSConstructor', 'Structure')
--utils.high_link('TSConstant', 'Constant')
--utils.high_link('TSConstBuiltin', 'Constant')
--utils.high_link('TSConstMacro', 'Macro')
--utils.high_link('TSError', 'Error')
--utils.high_link('TSField', 'Field')
--utils.high_link('TSFloat', 'Float')
--utils.high_link('TSFunction', 'Function')
--utils.high_link('TSFuncBuiltin', 'FunctionBuiltin')
--utils.high_link('TSFuncMacro', 'Macro')
--utils.high_link('TSInclude', 'Include')
--utils.high_link('TSKeyword', 'Keyword')
--utils.high_link('TSKeywordFunction', 'KeywordFunction')
--utils.high_link('TSNamespa', 'Directory')
--utils.high_link('TSNumber', 'Number')
--utils.high_link('TSOperator', 'Operator')
--utils.high_link('TSParameter', 'Argument')
--utils.high_link('TSParameterReferen', 'Argument')
--utils.high_link('TSPunctDelimiter', 'Delimiter')
utils.high_link('TSPunctBracket', 'Delimiter')
--utils.high_link('TSPunctSpecial', 'Delimiter')
--utils.high_link('TSRepeat', 'Repeat')
--utils.high_link('TSString', 'String')
--utils.high_link('TSStringRegex', 'StringDelimiter')
--utils.high_link('TSStringEscape', 'StringDelimiter')
--utils.high_link('TSTag', 'Tag')
--utils.high_link('TSTagDelimiter', 'Delimiter')
--utils.high_link('TSStrong', 'Bold')
--utils.high_link('TSURI', 'URL')
--utils.high_link('TSWarning', 'Warning')
--utils.high_link('TSDanger', 'Error')
--utils.high_link('TSType', 'Type')
--utils.high_link('TSTypeBuiltin', 'TypeBuiltin')
utils.high_link('TSVariable', 'Variable')
--utils.high_link('TSVariableBuiltin', 'VariableBuiltin')

-- Ruby
--local ruby = {
--  rubyClassName = { fg = c.turquoise, gui = 'bold,underline' },
--}
--utils.apply_highlight(ruby)
--utils.high_link('rubyClass', 'Type')
--utils.high_link('rubyClassBlock', 'Function')
utils.high_link('rubyConstant', 'Constant')
utils.high_link('rubyEntity', 'Character')
utils.high_link('rubyInterpolation', 'Identifier')
utils.high_link('rubyKeywordAsMethod', 'Function')
utils.high_link('rubyMethodName', 'FunctionBuiltin')
utils.high_link('rubySymbol', 'Identifier')

-- TypeScript
-- utils.high_link('tsxAttrib', 'Label')
utils.high_link('typescriptArrowFunc', 'Operator')
utils.high_link('typescriptBlock', 'Identifier')
utils.high_link('typescriptBraces', 'Delimiter')
utils.high_link('typescriptDestructureVariable', 'Statement')
utils.high_link('typescriptCastKeyword', 'Include')
utils.high_link('typescriptExport', 'Include')
utils.high_link('typescriptFuncKeyword', 'Function')
utils.high_link('typescriptFuncName', 'FunctionBuiltin')
utils.high_link('typescriptIdentifierName', 'Identifier')
utils.high_link('typescriptImport', 'Include')
utils.high_link('typescriptObjectLiteral', 'Function')
utils.high_link('typescriptVariableDeclaration', 'Statement')
