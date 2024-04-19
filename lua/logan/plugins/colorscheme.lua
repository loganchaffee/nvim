-- return {
-- 	"catppuccin/nvim",
-- 	name = "catppuccin",
-- 	priority = 1000,
-- 	config = function()
-- 		require("catppuccin").setup({
-- 			flavour = "mocha", -- latte, frappe, macchiato, mocha
-- 			transparent_background = true,
-- 		})
--
-- 		vim.cmd.colorscheme("catppuccin")
-- 	end,
-- }

local function makeTransParent()
	vim.cmd("au ColorScheme * hi Normal ctermbg=none guibg=none")
	vim.cmd("au ColorScheme * hi SignColumn ctermbg=none guibg=none")
	vim.cmd("au ColorScheme * hi NormalNC ctermbg=none guibg=none")
	vim.cmd("au ColorScheme * hi MsgArea ctermbg=none guibg=none")
	vim.cmd("au ColorScheme * hi TelescopeBorder ctermbg=none guibg=none")
	vim.cmd("au ColorScheme * hi NvimTreeNormal ctermbg=none guibg=none")
	vim.cmd("let &fcs='eob: '")
end

return {
	"lunarvim/darkplus.nvim",
	priority = 1000,
	name = "darkplus",
	config = function()
		makeTransParent()
		vim.cmd("colorscheme darkplus")
	end,
}
