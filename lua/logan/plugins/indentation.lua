local files_to_ignore = {
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
	"NvimTree",
	"lazyterm",
}

-- Draws gray lines for all indentations
local blankline = {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	config = function()
		require("ibl").setup({
			indent = {
				char = "▏",
				tab_char = "▏",
			},
			scope = {
				enabled = false,
			},
			exclude = {
				filetypes = files_to_ignore,
			},
		})
	end,
}

-- Draws white light for the indentation that the cursor is in
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

		-- Disable on certain file types
		vim.api.nvim_create_autocmd("FileType", {
			pattern = files_to_ignore,
			callback = function()
				vim.b.miniindentscope_disable = true
			end,
		})
	end,
}

return { mini, blankline }
