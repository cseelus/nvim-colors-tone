local general_ui = {
  Normal = { fg = c.fg, bg = c.bg },
	Normal = { fg = fg, bg = transparent_bg and 'NONE' or bg },
	NormalPopup = {
		fg = fg_highlight,
		bg = transparent_bg and 'NONE' or bg_popup,
	},
	NormalPopover = {
		fg = fg_highlight,
		bg = transparent_bg and 'NONE' or bg_popup,
	},
	NormalPopupPrompt = {
		fg = base7,
		bg = transparent_bg and 'NONE' or utils.Darken(bg_popup, 0.3),
		gui = 'bold',
	},
	NormalPopupSubtle = {
		fg = base6,
		bg = transparent_bg and 'NONE' or bg_popup,
	},
	EndOfBuffer = { fg = bg, bg = transparent_bg and 'NONE' or bg },

	Visual = { bg = dark_water },
	VisualBold = { bg = dark_water, gui = 'bold' },

	LineNr = { fg = grey, bg = transparent_bg and 'NONE' or bg },
	Cursor = { bg = water },
	CursorLine = { bg = bg_highlight },
	CursorLineNr = { fg = fg, bg = bg_highlight },
	CursorColumn = { bg = bg_highlight },

	Folded = { fg = base5, bg = bg_highlight },
	FoldColumn = { fg = fg_alt, bg = bg },
	SignColumn = { bg = transparent_bg and 'NONE' or bg },
	ColorColumn = { bg = bg_highlight },

	IndentGuide = { fg = grey },
	IndentGuideEven = { fg = grey },
	IndentGuideOdd = { fg = grey },

	TermCursor = { fg = fg, gui = 'reverse' },
	TermCursorNC = { fg = fg_alt, gui = 'reverse' },
	TermNormal = { fg = fg, bg = bg },
	TermNormalNC = { fg = fg, bg = bg },

	WildMenu = { fg = fg, bg = dark_water },
	Separator = { fg = fg_alt },
	VertSplit = { fg = grey, bg = bg },

	TabLine = {
		fg = base7,
		bg = transparent_bg and 'NONE' or bg_alt,
		gui = 'bold',
	},
	TabLineSel = { fg = water, bg = bg, gui = 'bold' },
	TabLineFill = { bg = transparent_bg and 'NONE' or base1, gui = 'bold' },

	StatusLine = { fg = base8, bg = bg_popup },
	StatusLineNC = { fg = base6, bg = bg_popup },
	StatusLinePart = { fg = base6, bg = bg_popup, gui = 'bold' },
	StatusLinePartNC = { fg = base6, bg = bg_popup, gui = 'bold' },

	Pmenu = { fg = fg, bg = bg_highlight },
	PmenuSel = { fg = base0, bg = water },
	PmenuSelBold = { fg = base0, bg = water, gui = 'bold' },
	PmenuSbar = { bg = bg_alt },
	PmenuThumb = { bg = fg },
}

if vim.opt.pumblend == 1 then
	vim.opt.pumblend = 20
end

utils.apply_highlight(general_ui)

-- }}}

-- Search, Highlight. Conceal, Messages {{{

local search_high_ui = {
	Search = { fg = fg, bg = dark_water, gui = 'bold' },
	Substitute = { fg = red, gui = 'strikethrough,bold' },
	IncSearch = { fg = fg, bg = dark_water, gui = 'bold' },
	IncSearchCursor = { gui = 'reverse' },

	Conceal = { fg = grey, gui = 'none' },
	SpecialKey = { fg = aubergine, gui = 'bold' },
	NonText = { fg = fg_alt, gui = 'bold' },
	MatchParen = { fg = red, gui = 'bold' },
	Whitespace = { fg = grey },

	Highlight = { bg = bg_highlighted },
	HighlightSubtle = { bg = bg_highlighted },

	Question = { fg = green, gui = 'bold' },

	File = { fg = fg },
	Directory = { fg = aubergine, gui = 'bold' },
	Title = { fg = aubergine, gui = 'bold' },

	Bold = { gui = 'bold' },
	Emphasis = { fg = green, gui = 'bold' },
}

utils.apply_highlight(search_high_ui)

-- }}}

-a Text levels {{{

local text_colors = {
	Normal = fg,
	Info = water,
	Success = green,
	Warning = yellow,
	Debug = yellow,
	Error = red,
	Special = aubergine,
	Muted = base7,
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

-- }}}

-- Main Syntax {{{

local main_syntax = {
	Tag = { fg = tag, gui = 'bold' },
	Link = { fg = tag, sp = 'undercurl' },
	URL = { fg = tag, sp = 'undercurl' },
	Underlined = { fg = tag, sp = 'underline' },

	Comment = {
		fg = base5,
		gui = vim.g.tone_italic_comments and 'italic' or 'NONE',
	},
	CommentBold = { fg = base5, gui = 'bold' },
	SpecialComment = { fg = base7, gui = 'bold' },

	Macro = { fg = aubergine },
	Define = { fg = aubergine, gui = 'bold' },
	Include = { fg = aubergine },
	PreProc = { fg = aubergine, gui = 'bold' },
	PreCondit = { fg = aubergine, gui = 'bold' },

	Label = { fg = light_bg and orange or water },
	Repeat = { fg = light_bg and orange or water },
	Keyword = { fg = light_bg and erange or water },
	Operator = { fg = light_bg and orange or water },
	Delimiter = { fg = light_bg and orange or water },
	Statement = { fg = light_bg and orange or water },
	Exception = { fg = light_bg and orange or water },
	Conditional = { fg = light_bg and orange or water },

	Variable = { fg = '#8B93E6' },
	VariableBuiltin = { fg = '#8B93E6', gui = 'bold' },
	Constant = { fg = aubergine, gui = 'bold' },

	Number = { fg = water },
	Float = { fg = water },
	Boolean = { fg = water, gui = 'bold' },
	Enum = { fg = water },

	Character = { fg = aubergine, gui = 'bold' },
	SpecialChar = { fg = base8, gui = 'bold' },

	String = { fg = green },
	StringDelimiter = { fg = green },

	Special = { fg = aubergine },
	SpecialBold = { fg = aubergine, gui = 'bold' },

	Field = { fg = aubergine },
	Argument = { fg = light_sky },
	Attribute = { fg = light_sky },
	Identifier = { fg = light_sky },
	Property = { fg = sky },
	Function = { fg = sky },
	FunctionBuiltin = { fg = light_sky, gui = 'bold' },
	KeywordFunction = { fg = light_bg and orange or water },
	Method = { fg = aubergine },

	Type = { fg = green, gui = 'bold' },
	TypeBuiltin = { fg = yellow, gui = 'bold' },
	StorageClass = { fg = light_bg and orange or water },
	Class = { fg = light_bg and orange or water },
	Structure = { fg = light_bg and orange or water },
	Typedef = { fg = light_bg and orange or water },

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

-- }}}

-- Diff {{{

local diff = {
	diffLine = { fg = base8, bg = diff_info_bg1 },
	diffSubName = { fg = base8, bg = diff_info_bg1 },

	DiffAdd = { bg = diff_add_bg1 },
	DiffChange = { bg = diff_add_bg1 },
	DiffText = { bg = diff_add_bg0 },
	DiffDelete = { bg = gh_danger_bg0 },

	DiffAdded = { fg = diff_add_fg0, bg = diff_add_bg1 },
	DiffModified = { fg = fg, bg = diff_info_bg0 },
	DiffRemoved = { fg = gh_danger_fg0, bg = gh_danger_bg1 },

	DiffAddedGutter = { fg = diff_add_fg, gui = 'bold' },
	DiffModifiedGutter = { fg = diff_info_fg, gui = 'bold' },
	DiffRemovedGutter = { fg = gh_danger_fg, gui = 'bold' },

	DiffAddedGutterLineNr = { fg = grey },
	DiffModifiedGutterLineNr = { fg = grey },
	DiffRemovedGutterLineNr = { fg = grey },
}

utils.high_clear('DiffAdd')
utils.high_clear('DiffChange')
utils.high_clear('DiffText')
utils.high_clear('DiffDelete')
utils.apply_highlight(diff)

-- }}}

-- Markdown {{{
local markdown = {
      markdownCode = { bg = bg_highlight  },
      markdownCodeBlock = { bg = bg_highlight  },
      markdownH1 = { gui = "bold"  },
      markdownH2 = { gui = "bold"  },
      markdownLinkText = { gui = "underline"  },
}

utils.apply_highlight(markdown)
--}}}

-- Plugins {{{

-- barbar.nvim {{{

local barbar = {
	BufferCurrent = { fg = base9, bg = bg },
	BufferCurrentIndex = { fg = base6, bg = bg },
	BufferCurrentMod = { fg = yellow, bg = bg },
	BufferCurrentSign = { fg = water, bg = bg },
	BufferCurrentTarget = { fg = red, bg = bg, gui = 'bold' },

	BufferVisible = { fg = base7, bg = bg },
	BufferVisibleIndex = { fg = base9, bg = bg },
	BufferVisibleMod = { fg = yellow, bg = bg },
	BufferVisibleSign = { fg = base4, bg = bg },
	BufferVisibleTarget = { fg = red, bg = bg, gui = 'bold' },

	BufferInactive = { fg = base6, bg = base1 },
	BufferInactiveIndex = { fg = base6, bg = base1 },
	BufferInactiveMod = { fg = yellow, bg = base1 },
	BufferInactiveSign = { fg = base4, bg = base1 },
	BufferInactiveTarget = { fg = red, bg = base1, gui = 'bold' },

	BufferTabpages = { fg = water, bg = bg_statusline, gui = 'bold' },
	BufferTabpageFill = { fg = base4, bg = base1, gui = 'bold' },

	BufferPart = { fg = diff_info_fg, bg = diff_info_bg0, gui = 'bold' },
}

utils.apply_highlight(barbar)

-- }}}

-- Gitgutter {{{

utils.high_link('GitGutterAdd', 'DiffAddedGutter')
utils.high_link('GitGutterChange', 'DiffModifiedGutter')
utils.high_link('GitGutterDelete', 'DiffRemovedGutter')
utils.high_link('GitGutterChangeDelete', 'DiffModifiedGutter')

utils.high_link('GitGutterAddLineNr', 'DiffAddedGutterLineNr')
utils.high_link('GitGutterChangeLineNr', 'DiffModifiedGutterLineNr')
utils.high_link('GitGutterDeleteLineNr', 'DiffRemovedGutterLineNr')
utils.high_link('GitGutterChangeDeleteLineNr', 'DiffModifiedGutterLineNr')

-- }}}

-- Gitsigns {{{

utils.high_link('GitSignsAdd', 'DiffAddedGutter')
utils.high_link('GitSignsChange', 'DiffModifiedGutter')
utils.high_link('GitSignsDelete', 'DiffRemovedGutter')
utils.high_link('GitSignsChangeDelete', 'DiffModifiedGutter')

-- }}}

-- Telescope {{{

if vim.g.tone_telescope_highlights then
	local telescope = {
		TelescopeSelection = { fg = yellow, gui = 'bold' },
		TelescopeSelectionCaret = { fg = light_bg and orange or water },
		TelescopeMultiSelection = { fg = grey },
		TelescopeNormal = { fg = fg },
		TelescopeMatching = { fg = green, gui = 'bold' },
		TelescopePromptPrefix = { fg = light_bg and orange or water },
		TelescopeBorder = { fg = light_bg and orange or water },
		TelescopePromptBorder = { fg = light_bg and orange or water },
		TelescopeResultsBorder = { fg = light_bg and orange or water },
		TelescopePreviewBorder = { fg = light_bg and orange or water },
	}

	utils.apply_highlight(telescope)
	utils.high_link('TelescopePrompt', 'TelescopeNormal')
end

-- }}}

-- NvimTree {{{

local nvim_tree = {
	NvimTreeFolderName = { fg = light_bg and base9 or water, gui = 'bold' },
	NvimTreeRootFolder = { fg = green },
	NvimTreeEmptyFolderName = { fg = fg_alt, gui = 'bold' },
	NvimTreeSymlink = { fg = fg, sp = 'underline' },
	NvimTreeExecFile = { fg = green, gui = 'bold' },
	NvimTreeImageFile = { fg = light_bg and orange or water },
	NvimTreeOpenedFile = { fg = fg_alt },
	NvimTreeSpecialFile = { fg = fg, sp = 'underline' },
	NvimTreeMarkdownFile = { fg = fg, sp = 'underline' },
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

-- }}}

-- Dashboard {{{

local dashboard = {
	dashboardHeader = { fg = '#586268' },
	dashboardCenter = { fg = light_bg and orange or water },
	dashboardShortcut = { fg = '#9788b9' },
}

utils.apply_highlight(dashboard)
utils.high_link('dashboardFooter', 'dashboardHeader')

-- }}}

-- WhichKey {{{

local whichkey = {
	WhichKey = { fg = light_bg and orange or water },
	WhichKeyGroup = { fg = sky },
	WhichKeyDesc = { fg = sky },
	WhichKeySeparator = { fg = base5 },
	WhichKeyFloat = { bg = base2 },
	WhichKeyValue = { fg = grey },
}

utils.apply_highlight(whichkey)

-- }}}

-- }}}

-- LSP {{{

local msg_underline = {
	ErrorMsgUnderline = { fg = red, sp = 'undercurl' },
	WarningMsgUnderline = { fg = yellow, sp = 'undercurl' },
	MoreMsgUnderline = { fg = water, sp = 'undercurl' },
	MsgUnderline = { fg = green, sp = 'undercurl' },
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

-- LspSaga {{{

local lspsaga = {
	SagaShadow = { bg = bg },
	LspSagaDiagnosticHeader = { fg = red },
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
utils.high_link('LspSagaFinderSelection', 'Search')
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

-- }}}

-- }}}

-- TreeSitter {{{

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
	utils.high_link('TSNamespace', 'Directory')
	utils.high_link('TSNumber', 'Number')
	utils.high_link('TSOperator', 'Operator')
	utils.high_link('TSParameter', 'Argument')
	utils.high_link('TSParameterReference', 'Argument')
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
