-- Color definitions
------------------------------------------------------------------------
-- Change the colorscheme colors depends on the current background, defaults to dark variant colors

-- Dark colors (default)
Dark = {
  base0 = '#1B2229',
  base1 = '#1c1f24',
  base2 = '#202328',
  base3 = '#23272e',
  base4 = '#3f444a',
  base5 = '#5B6268',
  base6 = '#73797e',
  base7 = '#9ca0a4',
  base8 = '#DFDFDF',
  base9 = '#E6E6E6',

  grey = base4,
  red = '#ff6c6b',
  orange = '#da8548',
  green = '#00ffcc',
  yellow = '#ECBE7B',
  blue = '#51afef',
  dark_blue = '#2257A0',
  magenta = '#c678dd',
  light_magenta = magenta,
  violet = '#a9a1e1',
  cyan = '#46D9FF',
  white = '#efefef',

  bg = '#282c34',
  bg_alt = '#21242b',
  bg_highlight = '#21252a',
  bg_popup = '#3E4556',
  bg_statusline = bg_popup,
  bg_highlighted = '#4A4A45',

  fg = '#bbc2cf',
  fg_alt = '#5B6268',
  fg_highlight = magenta,

  tag = magenta,

  diff_info_fg = orange,
  diff_info_bg0 = magenta,
  diff_info_bg1 = magenta,

  diff_add_fg = green,
  diff_add_fg0 = magenta,
  diff_add_bg0 = magenta,
  diff_add_bg1 = magenta,

  gh_danger_fg = red,
  gh_danger_fg0 = magenta,
  gh_danger_bg0 = magenta,
  gh_danger_bg1 = magenta,
}

-- Light colors
Light = {
  base0 = '#f0f0f0',
  base1 = '#e7e7e7',
  base2 = '#dfdfdf',
  base3 = '#c6c7c7',
  base4 = '#9ca0a4',
  base5 = '#383a42',
  base6 = '#202328',
  base7 = '#23272e',
  base8 = '#1c1f24',
  base9 = '#1B2229',

  grey = base4,
  red = '#e45649',
  orange = '#da8548',
  green = '#50a14f',
  yellow = '#986801',
  blue = '#4078f2',
  dark_blue = '#a0bcf8',
  magenta = '#a626a4',
  light_magenta = magenta,
  violet = '#b751b6',
  cyan = '#0184bc',
  white = '#efefef',

  bg = '#fafafa',
  bg_alt = '#f0f0f0',
  bg_highlight = magenta,
  bg_popup = bg_alt,
  bg_statusline = bg_popup,

  fg = base5,
  fg_alt = base3,
  fg_highlight = magenta,

  tag = magenta,

  diff_info_fg = orange,
  diff_info_bg0 = magenta,
  diff_info_bg1 = magenta,

  diff_add_fg = green,
  diff_add_fg0 = magenta,
  diff_add_bg0 = magenta,
  diff_add_bg1 = magenta,

  gh_danger_fg = red,
  gh_danger_fg0 = magenta,
  gh_danger_bg0 = magenta,
  gh_danger_bg1 = magenta,
}

return { Dark = Dark, Light = Light }
