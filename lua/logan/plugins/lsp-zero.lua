return {
	"VonHeikemen/lsp-zero.nvim",
	branch = "v3.x",
	dependencies = {
		"neovim/nvim-lspconfig",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/nvim-cmp",
		"L3MON4D3/LuaSnip",
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"dcampos/cmp-emmet-vim",
	},
	config = function()
		local lsp_zero = require("lsp-zero")

		lsp_zero.on_attach(function(client, bufnr)
			lsp_zero.default_keymaps({ buffer = bufnr })
		end)

		require("mason").setup({})

		require("mason-lspconfig").setup({
			ensure_installed = {
				"tsserver",
				"lua_ls",
				"html",
				"gopls",
			},
			handlers = {
				lsp_zero.default_setup,
			},
		})

		local cmp = require("cmp")

		cmp.setup({
			sources = {
				{ name = "nvim_lsp" },
				{ name = "buffer" },
				{ name = "luasnip" },
				{ name = "emmet_vim" },
			},
			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered({
					winhighlight = "Normal:transparentBG,FloatBorder:transparentBG,Search:None",
				}),
			},
			mapping = cmp.mapping.preset.insert({
				["<CR>"] = cmp.mapping.confirm({ select = false }),
				["<C-Space>"] = cmp.mapping.complete(),
				["<S-Tab>"] = cmp.mapping.select_prev_item(cmp_select_opts),
				["<Tab>"] = cmp.mapping.select_next_item(cmp_select_opts),
			}),
		})
	end,
}
