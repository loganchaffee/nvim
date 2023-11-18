local nvim_tree_api = require("nvim-tree.api")
-- General
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.opt.clipboard = "unnamedplus" -- Yank to clipboard
vim.keymap.set("", "<leader>bn", vim.cmd.tabnext)
vim.keymap.set("", "<leader>bb", vim.cmd.tabprev)
vim.keymap.set("", "<leader>bc", vim.cmd.tabclose)

-- Telescope (fuzzy finder)
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>sf", builtin.find_files, {})
vim.keymap.set("n", "<leader>st", builtin.live_grep, {})

-- Lazy (plugin manager)
vim.keymap.set("n", "<leader>L", vim.cmd.Lazy)

-- Mason (lsp/tooling manager)
vim.keymap.set("n", "<leader>M", vim.cmd.Mason)

-- Nvim Tree
vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle)
