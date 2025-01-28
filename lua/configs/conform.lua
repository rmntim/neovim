local options = {
  formatters_by_ft = {
    lua = { "stylua" },

    html = { "biome" },
    css = { "biome" },
    javascript = { "biome" },
    typescript = { "biome" },

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
