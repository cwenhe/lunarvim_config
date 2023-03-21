-- -- linters and formatters <https://www.lunarvim.org/docs/languages#lintingformatting>
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
    {
        command = "autoflake",
        args = { "--stdin-display-name", "$FILENAME", "-" },
        filetypes = { "python" },
    },
}
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--     { command = "flake8", filetypes = { "python" } },
--     {
--         command = "shellcheck",
--         args = { "--severity", "warning" },
--     },
-- }
--
-- linters and formatters <https://www.lunarvim.org/docs/languages#lintingformatting>
-- formatters.setup {
-- local formatters = require "lvim.lsp.null-ls.formatters"
--     {
--         command = "prettier",
--         filetypes = { "json" },
--         -- extra_args = { "--print-width", "100" },
--     },
-- }
