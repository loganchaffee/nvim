return {
	"nvim-tree/nvim-tree.lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		-- disable netrw at the very start of your init.lua
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		-- set termguicolors to enable highlight groups
		vim.opt.termguicolors = true

		local nvim_tree = require("nvim-tree")

		nvim_tree.setup({
			on_attach = function(bufnr)
				local function opts(desc)
					return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
				end
				local ok, api = pcall(require, "nvim-tree.api")
				assert(ok, "api module is not found")
				-- default mappings
				api.config.mappings.default_on_attach(bufnr)
				-- Open file in new tab, go to tab if already open
				vim.keymap.set("n", "<CR>", api.node.open.tab_drop, opts("Tab drop"))
			end,
			update_focused_file = {
				enable = true,
			},
			actions = {
				open_file = {
					quit_on_open = true,
				},
			},
		})

		vim.cmd([[hi NvimTreeNormal guibg=NONE ctermbg=NONE]])
	end,
}
