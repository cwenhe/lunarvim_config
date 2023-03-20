--[[
 THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT
 `lvim` is the global options object
]]

-- vim options
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.relativenumber = true
vim.opt.listchars = { tab = '->' }
-- vim.opt.listchars = { space = '.', tab = '->' }
vim.opt.list = true
vim.opt.expandtab = true

-- general
lvim.log.level = "info"
lvim.lsp.log_levels = "OFF"
lvim.format_on_save = {
    enabled = true,
    pattern = "*.lua",
    timeout = 1000,
}
-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false
lvim.leader = "space"

-- keymappings <https://www.lunarvim.org/docs/configuration/keybindings>
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<M-o>"] = ":ClangdSwitchSourceHeader<cr>"
lvim.keys.normal_mode["q"] = "<cmd> cclose<CR>"
lvim.keys.normal_mode["ng"] = "<cmd>lua require('neogen').generate() <CR>"
lvim.keys.normal_mode["ns"] = ":HopChar2<cr>"
lvim.keys.normal_mode["nw"] = ":HopWord<cr>"
lvim.keys.normal_mode["<M-h>"] = ":ToggleTerm size=40 direction=horizontal <CR>"
lvim.keys.term_mode["<M-h>"] = "<C-\\><C-n> <cmd> q<CR>"
lvim.keys.insert_mode["jk"] = "<esc>"

-- lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
-- lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

-- -- Use which-key to add extra bindings with the leader-key prefix
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["bw"] = { "<cmd>noautocmd w<cr>", "Save without formatting" }
lvim.builtin.which_key.mappings["bc"] = { "<cmd>enew<cr>", "new buffer" }

lvim.builtin.which_key.mappings["x"] = { "<cmd> bdelete!<CR>", "close buffer" }
lvim.builtin.which_key.mappings["c"] = {
    name = "cmake",
    c = { "<cmd> Task start cmake configure<cr>", "configure" },
    b = { "<cmd> Task start cmake build_all -j=30<cr>", "build" },
    s = { "<cmd> Task cancel<cr>", "cancel" },
    C = { "<cmd> Task start cmake clean<cr>", "clean" },
    e = { "<cmd> FencView<cr>", "change file encoding" }
}
lvim.builtin.which_key.mappings["sq"] = { "<cmd> cope<CR>", "show quickfix" }

lvim.builtin.which_key.mappings["w"] = {
    name = "Windows",
    v = { "<cmd> vsplit <CR>", " vsplit window" },
    s = { "<cmd> split <CR>", " split window" },
    h = { "<cmd> wincmd h <CR>", "windows left" },
    j = { "<cmd> wincmd j <CR>", "windows down" },
    k = { "<cmd> wincmd k <CR>", "windows up" },
    l = { "<cmd> wincmd l <CR>", "windows right" },
    m = { "<cmd> exec 'vertical resize '. string(&columns * 0.66) <CR>", "windows resize max" },
    -- = = { "<cmd> exec 'vertical resize +'. string(&columns * 0.1) <CR>", "windows resize +" },
    -- - = { "<cmd> exec 'vertical resize -'. string(&columns * 0.1) <CR>", "windows resize -" }
    -- ["<leader>w"] = {"", " windows"},
}
lvim.builtin.which_key.mappings["w="] = { "<cmd> exec 'vertical resize +'. string(&columns * 0.1) <CR>",
    "windows resize +" }
lvim.builtin.which_key.mappings["w-"] = { "<cmd> exec 'vertical resize -'. string(&columns * 0.1) <CR>",
    "windows resize -" }

-- -- Change theme settings
lvim.colorscheme = "tokyonight-day"

lvim.builtin.lualine.style = "default"
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- Automatically install missing parsers when entering buffer
lvim.builtin.treesitter.auto_install = true

-- lvim.builtin.treesitter.ignore_install = { "haskell" }

-- -- generic LSP settings <https://www.lunarvim.org/docs/languages#lsp-support>

-- --- disable automatic installation of servers
-- lvim.lsp.installer.setup.automatic_installation = false

-- ---configure a server manually. IMPORTANT: Requires `:LvimCacheReset` to take effect
-- ---see the full default list `:lua =lvim.lsp.automatic_configuration.skipped_servers`
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pyright", opts)

-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. IMPORTANT: Requires `:LvimCacheReset` to take effect
-- ---`:LvimInfo` lists which server(s) are skipped for the current filetype
-- lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
--   return server ~= "emmet_ls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

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

-- -- Additional Plugins <https://www.lunarvim.org/docs/plugins#user-plugins>
-- lvim.plugins = {
--     {
--       "folke/trouble.nvim",
--       cmd = "TroubleToggle",
--     },
-- }
--
-- -- Additional Plugins <https://www.lunarvim.org/docs/plugins#user-plugins>
lvim.plugins = {
    -- {
    --   "folke/trouble.nvim",
    --   cmd = "TroubleToggle",
    -- },
    -- {"weilbith/nvim-code-action-menu"},
    {
        "ianding1/leetcode.vim"
    },
    { "EdenEast/nightfox.nvim"},
    { 'Shatur/neovim-tasks' },
    { 'mbbill/fencview' },
    { 'danymat/neogen',
        config = function()
            require('neogen').setup({ snippet_engine = "luasnip" })
        end },
    { "azabiong/vim-highlighter" },
    { "ellisonleao/gruvbox.nvim" },
    { "folke/tokyonight.nvim" },
    {"EdenEast/nightfox.nvim"},
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

-- -- Autocommands (`:help autocmd`) <https://neovim.io/doc/user/autocmd.html>
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "zsh",
--   callback = function()
--     -- let treesitter use bash highlight for zsh files as well
--     require("nvim-treesitter.highlight").attach(0, "bash")
--   end,
-- })
-- neovim-task config ----
--
local Path = require('plenary.path')
require('tasks').setup({
    default_params = { -- Default module parameters with which `neovim.json` will be created.
        cmake = {
            cmd = 'cmake', -- CMake executable to use, can be changed using `:Task set_module_param cmake cmd`.
            build_dir = tostring(Path:new('{cwd}', 'build')), --, '{os}-{build_type}')), -- Build directory. The expressions `{cwd}`, `{os}` and `{build_type}` will be expanded with the corresponding text values. Could be a function that return the path to the build directory.
            build_type = 'Debug', -- Build type, can be changed using `:Task set_module_param cmake build_type`.
            dap_name = 'lldb', -- DAP configuration name from `require('dap').configurations`. If there is no such configuration, a new one with this name as `type` will be created.
            args = { -- Task default arguments.
                configure = { '-D', 'CMAKE_EXPORT_COMPILE_COMMANDS=1' },
            },
        },
    },
    save_before_run = true, -- If true, all files will be saved before executing a task.
    params_file = 'neovim.json', -- JSON file to store module and task parameters.
    quickfix = {
        pos = 'botright', -- Default quickfix position.
        height = 12, -- Default height.
    },
    dap_open_command = function() return require('dap').repl.open() end, -- Command to run after starting DAP session. You can set it to `false` if you don't want to open anything or `require('dapui').open` if you are using https://github.com/rcarriga/nvim-dap-ui
})

-- linters and formatters <https://www.lunarvim.org/docs/languages#lintingformatting>
-- formatters.setup {
-- local formatters = require "lvim.lsp.null-ls.formatters"
--     {
--         command = "prettier",
--         filetypes = { "json" },
--         -- extra_args = { "--print-width", "100" },
--     },
-- }

-- require'lspconfig'.cmake.setup{}

lvim.builtin.treesitter.highlight.disable = function(lang, buf)
    if lang == "json" then
        return true
    end
    -- local max_filesize = 100 * 1024 -- 100 KB
    -- local max_filesize = 100 -- 100 KB
    -- local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
    -- if ok and stats and stats.size > max_filesize then
    --     return true
    -- end
    return false
end

lvim.builtin.treesitter.indent.disable = function(lang, buf)
    if lang == "c" or lang == "cpp" then
        return true
    end
    local max_filesize = 100 -- 100 KB
    local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
    if ok and stats and stats.size > max_filesize then
        return true
    end
    return false
end


lvim.builtin.cmp.formatting = {
    format = function(entry, vim_item)
        ---设置提示宽度为屏幕大小的三分之一
        vim_item.abbr = string.sub(vim_item.abbr, 1, vim.o.columns / 3)
        return vim_item
    end
}
-- lvim.builtin.cmp.completion.keyword_length = 2
-- lvim.builtin.treesitter.indent = {
--     disable = { "c", "cpp" },
--     enabled = true
-- }
lvim.builtin.luasnip.sources.friendly_snippets = false
-- lvim.builtin.luasnip.sources.friendly_snippets = false
lvim.builtin.indentlines.options.show_trailing_blankline_indent = true
lvim.builtin.indentlines.options.show_current_context = true
lvim.builtin.telescope.defaults.path_display = {
    shorten = {
        len = 3
    }
}
lvim.builtin.telescope.defaults.file_ignore_patterns = { "^./.git/", "^./build/", "^.vscode/", "%%-test%-data",
    "^.cache/" }
lvim.builtin.dap.active = true


-----------------------begin clipboard config -------------------------------------------
local function copy(lines, _)
    require('osc52').copy(table.concat(lines, '\n'))
end

local function paste()
    return { vim.fn.split(vim.fn.getreg(''), '\n'), vim.fn.getregtype('') }
end

vim.g.clipboard = {
    name = 'osc52',
    copy = { ['+'] = copy, ['*'] = copy },
    paste = { ['+'] = paste, ['*'] = paste },
}

-- Now the '+' register will copy to system clipboard using OSC52
vim.keymap.set('n', '<leader>c', '"+y')
vim.keymap.set('n', '<leader>cc', '"+yy')
-----------------------end clipboard config -------------------------------------------

-- Now the '+' register will copy to system clipboard using OSC52
vim.keymap.set('n', '<leader>c', '"+y')
vim.keymap.set('n', '<leader>cc', '"+yy')
-----------------------end clipboard config -------------------------------------------
--
--
----------------------- begin clangd_extensions --------------------------------------
-- require("clangd_extensions").setup()
-----------------------  end clangd_extensions  --------------------------------------
--
-----------------------  begin dap config --------------------------------------
local dap = require('dap')
dap.adapters.cppdbg = {
  id = "cppdbg",
  type = "executable",
  -- command = "/usr/bin/lldb-vscode-11",
  -- command = "/home/cwenhe/3rd_softwares/extension/debugAdapters/bin/OpenDebugAD7",
  command = "OpenDebugAD7",
  name = "lldb",
  env = {
    LLDB_LAUNCH_FLAG_LAUNCH_IN_TTY = "NO",
  },
}

dap.adapters.lldb = {
  type = 'executable',
  command = 'lldb-vscode', -- adjust as needed, must be absolute path
  name = 'lldb'
}

require("dap.ext.vscode").load_launchjs(nil, { 
    cppdbg= { "c", "cpp" } ,
    lldb = { "c", "cpp" } 
})
-----------------------  end dap config --------------------------------------


-----------------------  begin dap ui config --------------------------------------
local dap, dapui = require "dap", require "dapui"
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
  dap.repl.close {}
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
  dap.repl.close {}
end

dapui.setup {
  icons = { expanded = "▾", collapsed = "▸", current_frame = "▸" },
  mappings = {
    -- Use a table to apply multiple mappings
    expand = { "<CR>", "<2-LeftMouse>", "l" },
    open = "o",
    remove = "d",
    edit = "e",
    repl = "r",
    toggle = "t",
  },
  -- Expand lines larger than the window
  -- Requires >= 0.7
  expand_lines = vim.fn.has "nvim-0.7" == 1,
  -- Layouts define sections of the screen to place windows.
  -- The position can be "left", "right", "top" or "bottom".
  -- The size specifies the height/width depending on position. It can be an Int
  -- or a Float. Integer specifies height/width directly (i.e. 20 lines/columns) while
  -- Float value specifies percentage (i.e. 0.3 - 30% of available lines/columns)
  -- Elements are the elements shown in the layout (in order).
  -- Layouts are opened in order so that earlier layouts take priority in window sizing.
  layouts = {
    -- {
    --   elements = {
    --     -- Elements can be strings or table with id and size keys.
    --     { id = "scopes", size = 0.25 },
    --     "breakpoints",
    --     "stacks",
    --     "watches",
    --   },
    --   size = 20, -- 40 columns
    --   position = "left",
    -- },
    {
      elements = {
        "repl",
        "stacks",
        -- "console",
      },
      size = 0.25, -- 25% of total lines
      position = "bottom",
    },
  },
  controls = {
    -- Requires Neovim nightly (or 0.8 when released)
    enabled = true,
    -- Display controls in this element
    element = "repl",
    icons = {
      pause = "",
      play = "",
      step_into = "",
      step_over = "",
      step_out = "",
      step_back = "",
      run_last = "↻",
      terminate = "□",
    },
  },
  floating = {
    max_height = nil, -- These can be integers or a float between 0 and 1.
    max_width = nil, -- Floats will be treated as percentage of your screen.
    border = "single", -- Border style. Can be "single", "double" or "rounded"
    mappings = {
      close = { "q", "<Esc>" },
    },
  },
  windows = { indent = 1 },
  render = {
    max_type_length = nil, -- Can be integer or nil.
    max_value_lines = 100, -- Can be integer or nil.
  },
}

lvim.keys.normal_mode["<F5>"] = " <Cmd>lua require'dap'.continue()<CR>"
lvim.keys.normal_mode["<F10>"] = " <Cmd>lua require'dap'.step_over()<CR>"
lvim.keys.normal_mode["<F11>"] = " <Cmd>lua require'dap'.step_into()<CR>"
lvim.keys.normal_mode["<S-F10>"] = " <Cmd>lua require'dap'.step_out()<CR>"
lvim.keys.normal_mode["<F12>"] = " <Cmd>lua require'dap'.step_out()<CR>"
lvim.keys.normal_mode["<S-f5>"] = " <Cmd>lua require'dap'.continue()<CR>"
-- lvim.keys.normal_mode["<Leader>ds"] = { " <Cmd>lua require'dap'.terminate()<CR>", "terminate debug" },
lvim.keys.normal_mode["<F9>"] =  " <Cmd>lua require'dap'.toggle_breakpoint()<CR>"


-----------------------  end dap ui config --------------------------------------
