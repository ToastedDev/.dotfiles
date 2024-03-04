---@type ChadrcConfig
local M = {}

M.ui = {
  theme = 'everblush'
}
M.mappings = require "custom.mappings"
M.plugins = "custom.plugins"

vim.cmd([[
  autocmd VimLeave * set guicursor= | call chansend(v:stderr, "\x1b[ q")
]])

return M
