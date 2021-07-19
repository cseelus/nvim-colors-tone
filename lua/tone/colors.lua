-- Color definitions
------------------------------------------------------------------------
-- Change the colorscheme colors depends on the current background, defaults to dark variant colors

-- Dark colors (default)
Dark = {
  -- main colors
  base1     = '#ebebff',
  base2     = '#ceceea',
  base3     = '#8a8ab8',
  base4     = '#616181',
  base5     = '#585876',
  base6     = '#3a3a58',
  base7     = '#2a2a41',
  base8     = '#181827',

  aubergine = '#c59dc5',
  purple    = '#a9a9e0',
  turquoise = '#1fffd2',
  leaf      = '#27a592',
  sky       = '#9fd4ff',
  water     = '#55b4ff',
  gold      = '#c7ca4b',
  sap       = '#ebff00',

  -- derived
  toneFg        = '#ebebff',
  bg        = '#181827'
}

-- Light colors
Light = {
  base1     = '#272018',
  base2     = '#948c82',
  base3     = '#a8a39e',
  base4     = '#c3beb7',
  base5     = '#d3cec6',
  base6     = '#e8e1da',
  base7     = '#f0eae2',
  --base8     = '#fbf4ec',
  base8     = '#f2eade',

  aubergine = '#a56aa5',
  purple    = '#6d6da7',
  turquoise = '#17c2a0',
  leaf      = '#28a492',
  sky       = '#449ee5',
  water     = '#1282dc',
  gold      = '#a1a600',
  sap       = '#a1a600',

  -- derived
  toneFg        = '#272018',
  bg        = '#fbf4ec'
}

return { Dark = Dark, Light = Light }
