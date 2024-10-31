return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	config = function()
		require("bufferline").setup({
			options = {
				diagnostics = "nvim_lsp",
				separator_style = { "", "" },
				modified_icon = "●",
				offsets = {
					{
						filetype = "NvimTree",
						text = "",
						separator = false,
						text_align = "left",
					},
				},
			},
		})
	end,
}
