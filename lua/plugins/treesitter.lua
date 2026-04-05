return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").setup({
      ensure_installed = {
        "lua",
        "vim",
        "bash",
        "python",
        "c",
        "cpp",
        "java",
        "c_sharp",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",       
        "json",
        "yaml",
        "toml",
        "sql",
        "dockerfile",
        "markdown",
        "markdown_inline",
        "gitignore",
        "regex",
      },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
