local options = {
  formatters_by_ft = {
    lua = { "stylua" },

    html = { "prettier" },
    css = { "prettier" },

    javascript = { "prettier" },
    typescript = { "prettier" },
    tsx = { "prettier" },

    json = { "prettier" },

    go = { "gofmt", "goimports" },

    c = { "clang-format" },
    cpp = { "clang-format" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
