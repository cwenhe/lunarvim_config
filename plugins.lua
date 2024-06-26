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
    -- {
    --     "ianding1/leetcode.vim"
    -- },
    {
        "mhartington/formatter.nvim",
        -- config = function()
        --     require("config.formatter")
        -- end,
    },
    {
        "nvimdev/lspsaga.nvim",
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
    -- {
    --     'tzachar/cmp-tabnine', after = "nvim-cmp", build = './install.sh', dependencies = 'hrsh7th/nvim-cmp'
    -- },
    -- {
    --     'tzachar/cmp-tabnine',
    --     build = './install.sh',
    --     dependencies = 'hrsh7th/nvim-cmp',
    -- },
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
    ,
    -- {
    --     "zbirenbaum/copilot-cmp",
    --     event = "InsertEnter",
    --     config = function()
    --         require("config.copilot_cmp")
    --     end,
    -- },
    -- {
    --     "zbirenbaum/copilot.lua",
    --     event = "InsertEnter",
    --     cmd = "Copilot",
    --     config = function()
    --         require("config.copilot")
    --     end,
    -- },
    { "lunarvim/colorschemes" },
    {
        "will133/vim-dirdiff"

    },
    -- {
    --     "kevinhwang91/nvim-bqf",
    --     event = { "BufRead", "BufNew" },
    --     config = function()
    --         require('config.nvim-bqf')
    --     end,
    -- },
    -- {
    --     "ray-x/lsp_signature.nvim",
    --     event = "VeryLazy",
    --     opts = {},
    --     config = function(_, opts) require 'lsp_signature'.setup(opts) end
    -- }
    {
        "Exafunction/codeium.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "hrsh7th/nvim-cmp",
        },
        config = function()
            require("config.codeium")
        end
    },
    {
        "Mofiqul/vscode.nvim"
    }
    ,
    { "David-Kunz/gen.nvim"

        -- config = function()
        -- require('gen').setup({ })
        -- end,

    }
}
