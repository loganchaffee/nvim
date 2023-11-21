return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.4",
	dependencies = { "nvim-lua/plenary.nvim", "nvim-treesitter/nvim-treesitter" },
	config = function()
		require("telescope").setup({})

		vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
	end,
}
