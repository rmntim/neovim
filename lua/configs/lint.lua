local lint = require("lint")

lint.linters_by_ft = {
  go = { "golangcilint" },

  javascript = { "biomejs" },
  typescript = { "biomejs" },
  tsx = { "biomejs" },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
