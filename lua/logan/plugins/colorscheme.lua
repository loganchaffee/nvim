-- return {
-- 	"Mofiqul/vscode.nvim",
-- 	priority = 1000,
-- 	config = function()
-- 		require("vscode").setup({
-- 			-- Enable transparent background
-- 			transparent = true,
-- 			-- Enable italic comment
-- 			italic_comments = true,
-- 			-- Disable nvim-tree background color
-- 			disable_nvimtree_bg = true,
-- 		})
-- 		require("vscode").load()
-- 		vim.cmd.colorscheme("vscode")
-- 	end,
-- }

return {
	"folke/tokyonight.nvim",
	priority = 1000,
	config = function()
		require("tokyonight").setup({
			transparent = true,
			terminal_colors = true,
			styles = {
				sidebars = "transparent",
				floats = "transparent",
			},
		})
		vim.cmd([[colorscheme tokyonight-night]])
	end,
}
