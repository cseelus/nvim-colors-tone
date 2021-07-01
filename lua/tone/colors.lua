-- Color definitions
------------------------------------------------------------------------
-- Change the colorscheme colors depends on the current background, defaults to dark variant colors

-- Dark colors (default)
Dark = {
  -- main colors
  toneBase1  = '#ebebff',
  toneBase2  = '#bdbde8',
  toneBase3  = '#8383af',
  toneBase4  = '#616181',
  toneBase5  = '#50506b',
  toneBase6  = '#3a3a58',
  toneBase7  = '#222234',
  toneBase8  = '#181827',

  toneAubergine = '#c59dc5',
  tonePurple = '#bdbde7',
  toneTurquoise = '#1fffd2',
  toneLeaf = '#28a492',
  toneSky = '#9fd4ff',
  toneWater = '#6cbeff',
  toneSap = '#ebff00',

  -- derived colors
  toneNone = 'NONE',
  toneFront = '#343434',
  toneBack = '#f3f3f3',

  toneTabCurrent = '#FFFFFF',
  toneTabOther = '#CECECE',
  toneTabOutside = '#E8E8E8',

  toneLeftDark = '#F3F3F3',
  toneLeftMid = '#E5E5E5',
  toneLeftLight = '#F3F3F3',

  tonePopupFront = '#000000',
  tonePopupBack = '#F3F3F3',
  tonePopupHighlightBlue = '#D6EBFF',
  tonePopupHighlightGray = '#767676',

  toneSplitLight = '#EEEEEE',
  toneSplitDark = '#DDDDDD',
  toneSplitThumb = '#DFDFDF',

  toneCursorDarkDark = '#E5EBF1',
  toneCursorDark = '#6F6F6F',
  toneCursorLight = '#767676',
  toneSelection = '#ADD6FF',
  toneLineNumber = '#dbdbe8',

  toneDiffRedDark = '#800000',
  toneDiffRedLight = '#CD3131',
  toneDiffRedLightLight = '#FF0000',
  toneDiffGreenDark = '#168256',
  toneDiffGreenLight = '#008000',
  toneSearchCurrent = '#A8AC94',
  toneSearch = '#F8C9AB',
}

-- Light colors
Light = {
  -- main colors
  toneBase1  = '#343434',
  toneBase2  = '#818194',
  toneBase3  = '#a3a3a8',
  toneBase4  = '#b9b9c3',
  toneBase5  = '#d2d2dd',
  toneBase6  = '#d8d8e8',
  toneBase7  = '#e9e9fa',
  toneBase8  = '#f3f3f3',

  toneAubergine = '#a56aa5',
  tonePurple = '#6d6da7',
  toneTurquoise = '#00d0a7',
  toneLeaf = '#28a492',
  toneSky = '#73b3e5',
  toneWater = '#1597ff',
  toneSap = '#ebff00',

  -- derived colors
  toneNone = 'NONE',
  toneFront = '#343434',
  toneBack = '#f3f3f3',

  toneTabCurrent = '#FFFFFF',
  toneTabOther = '#CECECE',
  toneTabOutside = '#E8E8E8',

  toneLeftDark = '#F3F3F3',
  toneLeftMid = '#E5E5E5',
  toneLeftLight = '#F3F3F3',

  tonePopupFront = '#000000',
  tonePopupBack = '#F3F3F3',
  tonePopupHighlightBlue = '#D6EBFF',
  tonePopupHighlightGray = '#767676',

  toneSplitLight = '#EEEEEE',
  toneSplitDark = '#DDDDDD',
  toneSplitThumb = '#DFDFDF',

  toneCursorDarkDark = '#E5EBF1',
  toneCursorDark = '#6F6F6F',
  toneCursorLight = '#767676',
  toneSelection = '#ADD6FF',
  toneLineNumber = '#dbdbe8',

  toneDiffRedDark = '#800000',
  toneDiffRedLight = '#CD3131',
  toneDiffRedLightLight = '#FF0000',
  toneDiffGreenDark = '#168256',
  toneDiffGreenLight = '#008000',
  toneSearchCurrent = '#A8AC94',
  toneSearch = '#F8C9AB',



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

  bg = '#f3f3f3',
  bg_alt = '#f0f0f0',
  bg_highlight = magenta,
  bg_popup = bg_alt,
  bg_statusline = bg_popup,

  fg = '#0f1533',
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
