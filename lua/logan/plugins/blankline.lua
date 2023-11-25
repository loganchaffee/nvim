return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	config = function()
		vim.cmd([[highlight IndentBlanklineIndent1 guifg=#bd93f9 gui=nocombine]])

		local hooks = require("ibl.hooks")
		-- create the highlight groups in the highlight setup hook, so they are reset
		-- every time the colorscheme changes
		hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
			vim.api.nvim_set_hl(0, "Gray", { fg = "#404040" })
		end)

		require("ibl").setup({
			indent = {
				char = "▏",
				tab_char = "▏",
				highlight = { "Gray" },
			},
			scope = { enabled = true },
			exclude = {
				filetypes = {
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
			},
		})
	end,
}
