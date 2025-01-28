local lint = require("lint")

lint.linters_by_ft = {
  go = { "golangcilint" },

  c = { "clangtidy" },
  cpp = { "clangtidy" },

  html = { "biome" },
  css = { "biome" },
  javascript = { "biome" },
  typescript = { "biome" },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
