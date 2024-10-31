function make_transparent()
	vim.cmd("au ColorScheme * hi Normal ctermbg=none guibg=none")
	vim.cmd("au ColorScheme * hi SignColumn ctermbg=none guibg=none")
	vim.cmd("au ColorScheme * hi NormalNC ctermbg=none guibg=none")
	vim.cmd("au ColorScheme * hi MsgArea ctermbg=none guibg=none")
	vim.cmd("au ColorScheme * hi TelescopeBorder ctermbg=none guibg=none")
	vim.cmd("au ColorScheme * hi NvimTreeNormal ctermbg=none guibg=none")
	vim.cmd("au ColorScheme * hi NvimTreeWinSeparator guibg=none guifg=none")
	vim.cmd("let &fcs='eob: '")
end

return {
	"lunarvim/darkplus.nvim",
	priority = 1000,
	name = "darkplus",
	config = function()
		make_transparent()
		vim.cmd("colorscheme darkplus")
	end,
}
