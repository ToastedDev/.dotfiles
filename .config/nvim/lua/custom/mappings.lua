local M = {}

-- In order to disable a default keymap, use
M.disabled = {
  n = {
      ["<leader>x"] = ""
  }
}

-- Your custom mappings
M.abc = {
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
