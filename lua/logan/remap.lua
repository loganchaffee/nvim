-- General
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.opt.clipboard = "unnamedplus" -- Yank to clipboard
vim.keymap.set("", "<leader>bn", vim.cmd.bnext)
vim.keymap.set("", "<leader>bb", vim.cmd.bprev)
vim.keymap.set("", "<leader>c", vim.cmd.bw)
vim.keymap.set("", "<leader>h", vim.cmd.nohlsearch) -- Clear search hightlight

-- Telescope (fuzzy finder)
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>sf", builtin.find_files, {})
vim.keymap.set("n", "<leader>sdf", function()
	builtin.find_files({ hidden = true })
end)
vim.keymap.set("n", "<leader>st", builtin.live_grep, {})

-- Lazy (plugin manager)
vim.keymap.set("n", "<leader>L", vim.cmd.Lazy)

-- Mason (lsp/tooling manager)
vim.keymap.set("n", "<leader>M", vim.cmd.Mason)

-- Nvim Tree
vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle)

-- Linting
-- Toggle lint warning message in float window
vim.keymap.set("n", "<leader>l", function()
	vim.diagnostic.open_float(0, { scope = "line" })
end)

-- Toggle git blame
vim.keymap.set("n", "<leader>gb", vim.cmd.GitBlameToggle)
