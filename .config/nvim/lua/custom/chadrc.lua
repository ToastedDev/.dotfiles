---@type ChadrcConfig
local M = {}

M.ui = {
  theme = 'everblush',
  tabufline = {
    enabled = false
  }
}
M.plugins = "custom.plugins"

vim.cmd([[
  autocmd VimLeave * set guicursor= | call chansend(v:stderr, "\x1b[ q")
]])

return M
