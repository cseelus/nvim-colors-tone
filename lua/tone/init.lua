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

local general_ui = {
  Normal = { fg = c.fg, bg = c.bg },
}

-- Enables pseudo-transparency for the popup-menu
if vim.opt.pumblend == 1 then
  vim.opt.pumblend = 20
end

utils.apply_highlight(general_ui)
