-- Setting everything up here
-- See /lua folder for actual colors and highlights

vim.cmd('hi clear')
if vim.fn.exists('syntax_on') then
  vim.cmd('syntax reset')
end

vim.g['colors_name'] = 'tone'

package.loaded['tone'] = nil
require('tone')
