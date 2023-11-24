-- return {}
return {
	"echasnovski/mini.nvim",
	version = false,
	config = function()
		require("mini.indentscope").setup({
			symbol = "▏",
			draw = {
				animation = function()
					return 0
				end,
			},
		})

		vim.api.nvim_create_autocmd("FileType", {
			pattern = {
				"help",
				"alpha",
				"dashboard",
				"neo-tree",
				"Trouble",
				"trouble",
				"lazy",
				"mason",
				"notify",
				"toggleterm",
				"lazyterm",
			},
			callback = function()
				vim.b.miniindentscope_disable = true
			end,
		})
	end,
}
