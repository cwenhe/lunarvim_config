lvim.plugins = {
    -- {
    --   "folke/trouble.nvim",
    --   cmd = "TroubleToggle",
    -- },
    -- {"weilbith/nvim-code-action-menu"},
    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    },

    {
        "stevearc/dressing.nvim",
        config = function()
            require('config.dressing')
        end
    },
    {
        "Shatur/neovim-session-manager",
        config = function()
            require("config.session")
        end
    },
    {
        "ianding1/leetcode.vim"
    },
    {
        "mhartington/formatter.nvim",
        config = function()
            require("config.formatter")
        end,
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
    -- {
    --     "folke/flash.nvim",
    --     event = "VeryLazy",
    --     ---@type Flash.Config
    --     opts = {},
    --     keys = {
    --         {
    --             "s",
    --             mode = { "n", "x", "o" },
    --             function()
    --                 require("flash").jump()
    --             end,
    --             desc = "Flash",
    --         },
    --         {
    --             "S",
    --             mode = { "n", "o", "x" },
    --             function()
    --                 require("flash").treesitter()
    --             end,
    --             desc = "Flash Treesitter",
    --         },
    --         {
    --             "r",
    --             mode = "o",
    --             function()
    --                 require("flash").remote()
    --             end,
    --             desc = "Remote Flash",
    --         },
    --         {
    --             "R",
    --             mode = { "o", "x" },
    --             function()
    --                 require("flash").treesitter_search()
    --             end,
    --             desc = "Flash Treesitter Search",
    --         },
    --         {
    --             "<c-s>",
    --             mode = { "c" },
    --             function()
    --                 require("flash").toggle()
    --             end,
    --             desc = "Toggle Flash Search",
    --         },
    --     },
    -- }
}
