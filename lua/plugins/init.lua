return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = require "configs.conform",
  },

{
  "neovim/nvim-lspconfig",
   config = function()
      require "configs.lspconfig"
   end,
},

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "vimdoc",
        "lua",

        "html",
        "css",
        "javascript",
        "typescript",
        "json",
        "json5",
        "jsonc",

        "go",
        "gomod",
        "gosum",
        "gowork",
        "yaml",

        "rust",
        "toml",
      },
    },
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      view = {
        side = "right",
      },
    },
  },
}
