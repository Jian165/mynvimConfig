return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                -- formatter for lua
                null_ls.builtins.formatting.stylua,

                -- formatter for js
                null_ls.builtins.formatting.prettier,

                -- HTML
                null_ls.builtins.formatting.prettier.with({
                    filetypes = { "html" },
                }),

                -- CSS
                null_ls.builtins.formatting.prettier.with({
                    filetypes = { "css", "scss", "less" },
                }),
                    --
                -- Java
                null_ls.builtins.formatting.google_java_format,

                -- Python
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.isort,
                --
                -- C# (.NET)
                null_ls.builtins.formatting.csharpier,

            },
        })
        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
}
