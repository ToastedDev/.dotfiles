local plugins = {
  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  { "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "eslint-lsp",
        "prettierd",
        "tailwindcss-language-server",
        "typescript-language-server",
        "css-lsp",
        "emmet-language-server",
        "html-lsp",
        "json-lsp",
        "astro-language-server",
        "gopls"
      }
    }
  },
  {
    "windwp/nvim-ts-autotag",
    ft = {
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
      "html",
      "astro",
      "markdown.mdx",
      "ejs"
    },
    config = function()
      require("nvim-ts-autotag").setup()
    end
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      vim.filetype.add({
        extension = {
          ejs = "html"
        }
      })
      vim.treesitter.language.register('html', 'ejs')

      opts = require "plugins.configs.treesitter"
      opts.ensure_installed = {
        "lua",
        "javascript",
        "typescript",
        "tsx",
        "css",
        "astro"
      }
      return opts
    end
  },
  {
    "laytan/cloak.nvim",
    event = "VeryLazy",
    config = function()
      require('cloak').setup({
        enabled = true,
        cloak_character = '*',
        highlight_group = 'Comment',
        cloak_length = nil,
        try_all_patterns = true,
        patterns = {
          {
            file_pattern = '.env*',
            cloak_pattern = '=".+"',
            replace = nil,
          },
        },
      })
    end
  },
  {
    "echasnovski/mini.move",
    event = "VeryLazy",
    config = function()
      require("mini.move").setup()
    end
  },
  {
    "jxnblk/vim-mdx-js",
    ft = "markdown.mdx"
  },
  {
    'stevearc/oil.nvim',
    lazy = false,
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require('oil').setup({
        view_options = {
          show_hidden = true
        }
      })
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "oil",
        callback = function()
          vim.opt_local.colorcolumn = ""
          vim.opt_local.number = false
        end,
      })
      vim.keymap.set("n", "<C-e>", function()
        require("oil").toggle_float()
      end)
    end
  },
  { "nvim-tree/nvim-tree.lua", enabled = false },
  { 'wakatime/vim-wakatime', lazy = false },
  { 'andweeb/presence.nvim', lazy = false },
  {
    'Exafunction/codeium.vim',
    lazy = false,
    config = function ()
      -- Change '<C-g>' here to any keycode you like.
      vim.keymap.set('i', '<Tab>', function () return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
      vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })
      vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
      vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
    end
  }
}
return plugins
