lvim.plugins = {
    -- {
    --   "folke/trouble.nvim",
    --   cmd = "TroubleToggle",
    -- },
    -- {"weilbith/nvim-code-action-menu"},
    {
        "ianding1/leetcode.vim"
    },
    { "EdenEast/nightfox.nvim" },
    { 'Shatur/neovim-tasks' },
    { 'mbbill/fencview' },
    {
        'danymat/neogen',
        config = function()
            require('neogen').setup({ snippet_engine = "luasnip" })
        end
    },
    { "azabiong/vim-highlighter" },
    { "ellisonleao/gruvbox.nvim" },
    { "folke/tokyonight.nvim" },
    { "EdenEast/nightfox.nvim" },
    { "Mofiqul/vscode.nvim" },
    { "catppuccin/vim" },
    -- {"p00f/clangd_extensions.nvim"},
    --clipboard
    { "ojroques/nvim-osc52" },
    {
        "phaazon/hop.nvim",
        event = "BufRead",
        config = function()
            require("hop").setup()
        end,
    },
    {
        "ggandor/lightspeed.nvim",
        event = "BufRead",
    },
    {
        "folke/todo-comments.nvim",
        event = "BufRead",
        config = function()
            require("todo-comments").setup()
        end,
    },
    {
        "rcarriga/nvim-dap-ui"
    }
    -- {
    --     "zbirenbaum/copilot.lua",
    --     cmd = "Copilot",
    --     event = "InsertEnter",
    --     config = function()
    --     end,
    --     require("copilot").setup({})
    -- }
    -- {
    --     "windwp/nvim-spectre",
    --     event = "BufRead",
    --     config = function()
    --         require("spectre").setup()
    --     end,
    -- },
}
