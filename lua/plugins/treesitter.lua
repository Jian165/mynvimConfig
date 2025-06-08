return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = {
				"lua",
				"javascript",
				"java",
				"html",
				"css",
				"c_sharp",
				"bash",
				"git_config",
				"git_rebase",
				"gitattributes",
				"gitcommit",
				"gitignore",
				"python",
				"razor",
				"json",
				"vim",
				"sql",
				"markdown",
			},
			highlight = { enable = true },
			indent = { enable = true },
			sync_install = false,
			auto_install = true,
		})
	end,
}
