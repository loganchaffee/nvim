vim.opt.laststatus = 3

return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"lunarvim/darkplus.nvim",
	},
	config = function()
		-- local git_blame = require("gitblame")

		local custom_darkplus = require("lualine.themes.darkplus")

		custom_darkplus.normal.c.bg = nil

		require("lualine").setup({
			options = {
				theme = custom_darkplus,
				-- section_separators = { left = "", right = "" },
			},
			-- sections = {
			-- 	lualine_c = {
			-- 		{
			-- 			git_blame.get_current_blame_text,
			-- 			cond = git_blame.is_blame_text_available,
			-- 		},
			-- 	},
			-- },
			extensions = { "nvim-tree" },
		})
	end,
}
