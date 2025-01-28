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
    "mfussenegger/nvim-lint",
    enabled = true,
    event = "VeryLazy",
    config = function()
      require "configs.lint"
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

        "c",
        "cpp",
        "cmake",
        "make",

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

  {
    "FabijanZulj/blame.nvim",
    lazy = false,
    config = function()
      require('blame').setup {}
    end,
  },

  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    lazy = false,
  },

  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        file_ignore_patterns = {
          "node_modules",
          "vendor",
        },
      },
    },
  },

  {
    "zgs225/gomodifytags.nvim",
    cmd = { "GoAddTags", "GoRemoveTags", "GoInstallModifyTagsBin" },
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("gomodifytags").setup() -- Optional: You can add any specific configuration here if needed.
    end,
  },
}
