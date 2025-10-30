return {
	{
		-- Mason setup
		"mason-org/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		-- Mason LSP Config
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls", -- Lua
					"omnisharp", -- C# (Mono/.NET + Blazor)
					"jdtls", -- Java
					"pyright", -- Python
					"sqlls", -- SQL
					"html", -- HTML
					"cssls", -- CSS
					"ts_ls", -- JavaScript and TypeScript
				},
			})
		end,
	},
	-- LSP Configuration
	"neovim/nvim-lspconfig",

	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
        --
		-- Use the new API instead of require("lspconfig")
		local lsp = vim.lsp.config

		-- Common LSP servers
		lsp.lua_ls.setup({
			capabilities = capabilities,
		})

		lsp.bashls.setup({
			capabilities = capabilities,
		})

		lsp.omnisharp.setup({
			capabilities = capabilities,
		})

		lsp.jdtls.setup({
			capabilities = capabilities,
		})

		lsp.pyright.setup({
			capabilities = capabilities,
		})

		lsp.sqlls.setup({
			capabilities = capabilities,
		})

		lsp.html.setup({
			capabilities = capabilities,
		})

		lsp.cssls.setup({
			capabilities = capabilities,
		})

		lsp.ts_ls.setup({
			capabilities = capabilities,
		})

		-- LSP keymaps on attach
		vim.api.nvim_create_autocmd("LspAttach", {
			desc = "LSP actions",
			callback = function(event)
				local opts = { buffer = event.buf }

				vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
				vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
				vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
				vim.keymap.set("n", "go", vim.lsp.buf.type_definition, opts)
				vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
				vim.keymap.set("n", "gs", vim.lsp.buf.signature_help, opts)
				vim.keymap.set("n", "<F2>", vim.lsp.buf.rename, opts)
				vim.keymap.set({ "n", "x" }, "<F3>", function()
					vim.lsp.buf.format({ async = true })
				end, opts)
				vim.keymap.set("n", "<F4>", vim.lsp.buf.code_action, opts)
			end,
		})
	end,
}
