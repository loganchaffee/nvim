return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.4",
	dependencies = { "nvim-lua/plenary.nvim", "nvim-treesitter/nvim-treesitter" },
	config = function()
		require("telescope").setup({
			defaults = {
				mappings = {
					i = {
						["<cr>"] = function(bufnr)
							-- Close tree if open
							-- vim.api.nvim_command("NvimTreeClose")
							-- Open in new tab, go to tab if open
							require("telescope.actions.set").edit(bufnr, "tab drop")
						end,
					},
					n = {
						["<cr>"] = function(bufnr)
							-- Close tree if open
							-- vim.api.nvim_command("NvimTreeClose")
							-- Open in new tab, go to tab if open
							require("telescope.actions.set").edit(bufnr, "tab drop")
						end,
					},
				},
			},
		})
	end,
}
