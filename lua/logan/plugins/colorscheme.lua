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
-- 			-- transparent = true,
-- 			-- Enable italic comment
-- 			italic_comments = true,
-- 			-- Disable nvim-tree background color
-- 			disable_nvimtree_bg = true,
-- 		})
-- 		require("vscode").load()
-- 		makeTransParent()
-- 		vim.cmd.colorscheme("vscode")
-- 		vim.cmd(":set number")
-- 	end,
-- }
