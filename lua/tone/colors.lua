local utils = require('utils')

-- Highlight Functions and Color definitions {{{

local function high_clear(group)
  vim.api.nvim_command('hi! clear ' .. group)
end

local function high_link(group, link)
  vim.api.nvim_command('hi! link ' .. group .. ' ' .. link)
end

local function highlight(group, styles)
  local bg = styles.bg and 'guibg=' .. styles.bg or 'guibg=NONE'
  local fg = styles.fg and 'guifg=' .. styles.fg or 'guifg=NONE'
  local sp = styles.sp and 'guisp=' .. styles.sp or 'guisp=NONE'
  local gui = styles.gui and 'gui=' .. styles.gui or 'gui=NONE'

  vim.api.nvim_command(
  'hi! ' .. group .. ' ' .. bg .. ' ' .. fg .. ' ' .. sp .. ' ' .. gui
  )
end

local function apply_highlight(groups)
  for group, styles in pairs(groups) do
    highlight(group, styles)
  end
end

-- Change the colorscheme colors depending on the current background, defaults to
-- tone dark variant colors
local current_bg = vim.opt.background:get()
local light_bg = false

local base0 = '#1B2229'
local base1 = '#1c1f24'
local base2 = '#202328'
local base3 = '#23272e'
local base4 = '#3f444a'
local base5 = '#5B6268'
local base6 = '#73797e'
local base7 = '#9ca0a4'
local base8 = '#DFDFDF'
local base9 = '#E6E6E6'

local grey = base4
local red = '#ff6c6b'
local orange = '#da8548'
local green = '#00ffcc'
local yellow = '#ECBE7B'
local blue = '#51afef'
local dark_blue = '#2257A0'
local magenta = '#c678dd'
local light_magenta = utils.Lighten(magenta, 0.4)
local violet = '#a9a1e1'
local cyan = '#46D9FF'
local white = '#efefef'

local bg = '#282c34'
local bg_alt = '#21242b'
local bg_highlight = '#21252a'
local bg_popup = '#3E4556'
local bg_statusline = bg_popup
local bg_highlighted = '#4A4A45'

local fg = '#bbc2cf'
local fg_alt = '#5B6268'
local fg_highlight = utils.Lighten(fg, 0.2)

local tag = utils.Mix(blue, cyan, 0.5)

local diff_info_fg = orange
local diff_info_bg0 = utils.Mix('#D8EEFD', bg, 0.6)
local diff_info_bg1 = utils.Mix('#D8EEFD', bg, 0.8)

local diff_add_fg = green
local diff_add_fg0 = utils.Mix(green, fg, 0.4)
local diff_add_bg0 = utils.Mix('#506d5b', bg, 0.6)
local diff_add_bg1 = utils.Mix('#acf2bd', bg, 0.8)

local gh_danger_fg = red
local gh_danger_fg0 = utils.Mix(red, fg, 0.6)
local gh_danger_bg0 = utils.Mix('#ffdce0', bg, 0.6)
local gh_danger_bg1 = utils.Mix('#ffdce0', bg, 0.8)

if current_bg == 'light' then
  light_bg = true

  base0 = '#f0f0f0'
  base1 = '#e7e7e7'
  base2 = '#dfdfdf'
  base3 = '#c6c7c7'
  base4 = '#9ca0a4'
  base5 = '#383a42'
  base6 = '#202328'
  base7 = '#23272e'
  base8 = '#1c1f24'
  base9 = '#1B2229'

  grey = base4
  red = '#e45649'
  orange = '#da8548'
  green = '#50a14f'
  yellow = '#986801'
  blue = '#4078f2'
  dark_blue = '#a0bcf8'
  magenta = '#a626a4'
  light_magenta = utils.Darken(magenta, 0.36)
  violet = '#b751b6'
  cyan = '#0184bc'
  white = '#efefef'

  bg = '#fafafa'
  bg_alt = '#f0f0f0'
  bg_highlight = utils.Darken(bg, 0.2)
  bg_popup = bg_alt
  bg_statusline = bg_popup

  fg = base5
  fg_alt = base3
  fg_highlight = utils.Lighten(fg, 0.2)

  tag = utils.Mix(blue, cyan, 0.5)

  diff_info_fg = orange
  diff_info_bg0 = utils.Mix('#D8EEFD', bg, 0.6)
  diff_info_bg1 = utils.Mix('#D8EEFD', bg, 0.8)

  diff_add_fg = green
  diff_add_fg0 = utils.Mix(green, fg, 0.4)
  diff_add_bg0 = utils.Mix('#506d5b', bg, 0.4)
  diff_add_bg1 = utils.Mix('#acf2bd', bg, 0.8)

  gh_danger_fg = red
  gh_danger_fg0 = utils.Mix(red, fg, 0.6)
  gh_danger_bg0 = utils.Mix('#ffdce0', bg, 0.8)
  gh_danger_bg1 = utils.Mix('#ffdce0', bg, 0.9)
end

-- }}}
