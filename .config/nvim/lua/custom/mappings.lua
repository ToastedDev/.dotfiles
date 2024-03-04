local M = {}

-- In order to disable a default keymap, use
M.disabled = {
  n = {
    ["<leader>x"] = ""
  }
}

-- Your custom mappings
M.toasted = {
  n = {
     ["<C-w>"] = {
      function()
        require("nvchad.tabufline").close_buffer()
      end,
      "Close buffer",
    },
    -- ...
  }
}

return M
