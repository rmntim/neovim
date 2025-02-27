local options = {
  formatters_by_ft = {
    lua = { "stylua" },

    html = { "biome" },
    css = { "biome" },
    javascript = { "biome", "biome-check", "biome-organize-imports" },
    typescript = { "biome", "biome-check", "biome-organize-imports" },
    tsx = { "biome", "biome-check", "biome-organize-imports" },
    json = { "biome" },

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
