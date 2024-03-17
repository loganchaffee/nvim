local blankline = {
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

local mini = {
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
				"NvimTree",
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

return { mini, blankline }
