return {
	"akinsho/git-conflict.nvim",
	version = "*",
	config = function()
		require("git-conflict").setup({
			default_mappings = {
				ours = "<leader>gcc",
				theirs = "<leader>gci",
				none = "<leader>gc0",
				both = "<leader>gcb",
				next = "<leader>gcn",
				prev = "<leader>gcp",
			},
		})
	end,
}
