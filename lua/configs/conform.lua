local options = {
  formatters_by_ft = {
    lua = { "stylua" },

    html = { "prettierd" },
    css = { "prettierd" },
    javascript = { "prettierd" },
    typescript = { "prettierd" },
    tsx = { "prettierd" },
    json = { "prettierd" },

    go = { "gofmt", "goimports" },

    c = { "clang-format" },
    cpp = { "clang-format" },

    haskell = { "fourmolu" },

    yaml = { "yamlfmt" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
