lvim.plugins = {
    -- {
    --   "folke/trouble.nvim",
    --   cmd = "TroubleToggle",
    -- },
    -- {"weilbith/nvim-code-action-menu"},
    {
        "ianding1/leetcode.vim"
    },
    {
        "glepnir/lspsaga.nvim",
        event = "LspAttach",
        config = function()
            require("config.lspsaga")
        end,
        dependencies = {
            { "nvim-tree/nvim-web-devicons" },
            --Please make sure you install markdown and markdown_inline parser
            { "nvim-treesitter/nvim-treesitter" }
        }

    },
    {
        'tzachar/cmp-tabnine', after = "nvim-cmp", build = './install.sh', dependencies = 'hrsh7th/nvim-cmp'
    },
    {
        'tzachar/cmp-tabnine',
        build = './install.sh',
        dependencies = 'hrsh7th/nvim-cmp',
    },
    -- {
    --     'tzachar/cmp-tabnine', after = "nvim-cmp", build = './install.sh', dependencies = 'hrsh7th/nvim-cmp'
    -- },
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
    { "folke/tokyonight.nvim" },
    -- { "ellisonleao/gruvbox.nvim" },
    -- { "EdenEast/nightfox.nvim" },
    -- { "Mofiqul/vscode.nvim" },
    -- { "catppuccin/vim" },
    -- {"p00f/clangd_extensions.nvim"},
    --clipboard
    { "ojroques/nvim-osc52" },
    -- {
    --     "phaazon/hop.nvim",
    --     event = "BufRead",
    --     config = function()
    --         require("hop").setup()
    --     end,
    -- },
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
    },
    {
        "Weissle/persistent-breakpoints.nvim",
        config = function()
            require("persistent-breakpoints").setup {
                load_breakpoints_event = { "BufReadPost" }
            }
        end,
    }
    -- {
    --     'tzachar/cmp-tabnine',
    --     build = './install.sh',
    --     dependencies = 'hrsh7th/nvim-cmp',
    --     event = "InsertEnter"
    -- }
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
