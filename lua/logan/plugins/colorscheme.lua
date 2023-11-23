function makeTransParent()
	vim.cmd("au ColorScheme * hi Normal ctermbg=none guibg=none")
	vim.cmd("au ColorScheme * hi SignColumn ctermbg=none guibg=none")
	vim.cmd("au ColorScheme * hi NormalNC ctermbg=none guibg=none")
	vim.cmd("au ColorScheme * hi MsgArea ctermbg=none guibg=none")
	vim.cmd("au ColorScheme * hi TelescopeBorder ctermbg=none guibg=none")
	vim.cmd("au ColorScheme * hi NvimTreeNormal ctermbg=none guibg=none")
	vim.cmd("let &fcs='eob: '")
end

return {
	"lunarvim/colorschemes",
	branch = "",
	priority = 1000,
	config = function()
		makeTransParent()
		vim.cmd("colorscheme darkplus")
	end,
}

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

-- return {
-- 	"folke/tokyonight.nvim",
-- 	priority = 1000,
-- 	config = function()
-- 		require("tokyonight").setup({
-- 			transparent = true,
-- 			terminal_colors = true,
-- 			styles = {
-- 				sidebars = "transparent",
-- 				floats = "transparent",
-- 			},
-- 		})
--
-- require("tokyonight").setup({
-- 	on_highlights = function(hl, c)
-- 		local prompt = "#2d3149"
-- 		hl.TelescopeNormal = {
-- 			bg = c.bg_dark,
-- 			fg = c.fg_dark,
-- 		}
-- 		hl.TelescopeBorder = {
-- 			bg = c.bg_dark,
-- 			fg = c.bg_dark,
-- 		}
-- 		hl.TelescopePromptNormal = {
-- 			bg = prompt,
-- 		}
-- 		hl.TelescopePromptBorder = {
-- 			bg = prompt,
-- 			fg = prompt,
-- 		}
-- 		hl.TelescopePromptTitle = {
-- 			bg = prompt,
-- 			fg = prompt,
-- 		}
-- 		hl.TelescopePreviewTitle = {
-- 			bg = c.bg_dark,
-- 			fg = c.bg_dark,
-- 		}
-- 		hl.TelescopeResultsTitle = {
-- 			bg = c.bg_dark,
-- 			fg = c.bg_dark,
-- 		}
-- 	end,
-- })
-- 		vim.cmd([[colorscheme tokyonight-night]])
-- 	end,
-- }
