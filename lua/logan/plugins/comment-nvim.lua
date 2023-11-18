return {
	"numToStr/Comment.nvim",
	opts = {
		-- add any options here
	},
	lazy = false,
	config = function()
		require("Comment").setup({
			toggler = {
				---Line-comment toggle keymap
				line = "/",
			},
			opleader = {
				-- Line-comment keymap
				line = "/",
			},
		})
	end,
}
