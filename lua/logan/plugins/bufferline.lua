return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	opts = {
		options = {
			offsets = {
				{
					filetype = "Neo Tree",
					text = "Nvim Tree",
					separator = false,
					text_align = "left",
				},
			},
			mode = "tabs",
		},
	},
}
