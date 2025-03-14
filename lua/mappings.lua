require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

-- nvimtree
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })
map("n", "<C-n>", "<cmd>NvimTreeFocus<CR>", { desc = "nvimtree focus window" })

-- blame
map("n", "<leader>gb", "<cmd>BlameToggle virtual<CR>", { desc = "git blame line" })

-- todo
map("n", "<leader>ft", "<cmd>TodoTelescope<CR>", { desc = "telescope find todos" })

-- lsp
map("n", "<leader>cf", vim.diagnostic.open_float, { desc = "floating diagnostic" })
