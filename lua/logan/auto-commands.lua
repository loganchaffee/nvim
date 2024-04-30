-- Tells treesitter to parse jsx file as tsx file. Fixes jsx syntax highligting
vim.cmd("autocmd BufNewFile,BufRead *.jsx set filetype=tsx")

-- Create group to assign commands
-- "clear = true" must be set to prevent loading an
-- auto-command repeatedly every time a file is resourced
local autocmd_group = vim.api.nvim_create_augroup("Custom auto-commands", { clear = true })

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	pattern = { "*.yaml", "*.yml" },
	desc = "Auto-format YAML files after saving",
	callback = function()
		local fileName = vim.api.nvim_buf_get_name(0)
		vim.cmd(":!yamlfmt " .. fileName)
	end,
	group = autocmd_group,
})
