return {
	"nvim-tree/nvim-tree.lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		-- disable netrw at the very start of your init.lua
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		-- set termguicolors to enable highlight groups
		vim.opt.termguicolors = true

		-- empty setup using defaults
		local nvim_tree = require("nvim-tree")
		local api = require("nvim-tree.api")

		nvim_tree.setup({
			on_attach = function(bufnr)
				local function opts(desc)
					return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
				end

				vim.keymap.set("n", "<CR>", api.node.open.tab, opts("Open: New Tab"))
			end,
			open_on_tab = true,
			update_focused_file = {
				enable = true,
			},
			actions = {
				open_file = {
					quit_on_open = true,
				},
			},
		})
	end,
}
