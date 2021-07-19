local colors = require('tone.colors')
local utils = require('tone.utils')

-- Set dark or light color scheme, depending on VIM background setting
c = colors.Dark
if vim.opt.background:get() == 'light' then
  c = colors.Light
end

return {
  normal = {
    a = { fg = c.base8, bg = c.base2, gui = 'bold'},
    b = { fg = c.base2, bg = c.base5 },
    c = { fg = c.base3, bg = c.base6 }
  },
  insert = {
    a = { fg = c.base8, bg = c.turquoise, gui = 'bold'},
    b = { fg = c.base2, bg = c.base5 },
    c = { fg = c.base3, bg = c.base6 }
  },
  visual = {
    a = { fg = c.base8, bg = c.gold, gui = 'bold'},
    b = { fg = c.base2, bg = c.base5 },
    c = { fg = c.base3, bg = c.base6 }
  },
  replace = {
    a = { fg = c.base8, bg = c.aubergine, gui = 'bold'},
    b = { fg = c.base2, bg = c.base5 },
    c = { fg = c.base3, bg = c.base6 }
  },
  command = {
    a = { fg = c.base8, bg = c.water, gui = 'bold'},
    b = { fg = c.base2, bg = c.base5 },
    c = { fg = c.base3, bg = c.base6 }
  },
  inactive = {
    a = { fg = c.base8, bg = c.base2, gui = 'bold'},
    b = { fg = c.base2, bg = c.base5 },
    c = { fg = c.base3, bg = c.base6 }
  }
}
