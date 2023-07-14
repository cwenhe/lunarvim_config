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



--

--
-----------------------  begin dap ui config --------------------------------------
local dap, dapui = require("dap"), require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
    dap.repl.close()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
    dap.repl.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
    dap.repl.close()
end
-- local dap, dapui = require "dap", require "dapui"
-- -- dap.listeners.after.event_initialized["dapui_config"] = function()
-- --     dapui.open()
-- -- end
-- dap.listeners.before.event_terminated["dapui_config"] = function()
--     dapui.close()
--     dap.repl.close {}
-- end
-- dap.listeners.before.event_exited["dapui_config"] = function()
--     dapui.close()
--     dap.repl.close {}
-- end

-- dapui.setup {
--     icons = { expanded = "▾", collapsed = "▸", current_frame = "▸" },
--     mappings = {
--         -- Use a table to apply multiple mappings
--         expand = { "<CR>", "<2-LeftMouse>", "l" },
--         open = "o",
--         remove = "d",
--         edit = "e",
--         repl = "r",
--         toggle = "t",
--     },
--     -- Expand lines larger than the window
--     -- Requires >= 0.7
--     expand_lines = vim.fn.has "nvim-0.7" == 1,
--     -- Layouts define sections of the screen to place windows.
--     -- The position can be "left", "right", "top" or "bottom".
--     -- The size specifies the height/width depending on position. It can be an Int
--     -- or a Float. Integer specifies height/width directly (i.e. 20 lines/columns) while
--     -- Float value specifies percentage (i.e. 0.3 - 30% of available lines/columns)
--     -- Elements are the elements shown in the layout (in order).
--     -- Layouts are opened in order so that earlier layouts take priority in window sizing.
--     layouts = { {
--         elements = { {
--             id = "scopes",
--             size = 0.25
--         }, {
--             id = "breakpoints",
--             size = 0.25
--         }, {
--             id = "stacks",
--             size = 0.25
--         }, {
--             id = "watches",
--             size = 0.25
--         } },
--         position = "left",
--         size = 40
--     }, {
--         elements = { {
--             id = "repl",
--             size = 0.5
--         }, {
--             id = "console",
--             size = 0.5
--         } },
--         position = "bottom",
--         size = 10
--     } },
--     controls = {
--         -- Requires Neovim nightly (or 0.8 when released)
--         enabled = true,
--         -- Display controls in this element
--         element = "repl",
--         icons = {
--             pause = "",
--             play = "",
--             step_into = "",
--             step_over = "",
--             step_out = "",
--             step_back = "",
--             run_last = "↻",
--             terminate = "□",
--         },
--     },
--     floating = {
--         max_height = nil,  -- These can be integers or a float between 0 and 1.
--         max_width = nil,   -- Floats will be treated as percentage of your screen.
--         border = "single", -- Border style. Can be "single", "double" or "rounded"
--         mappings = {
--             close = { "q", "<Esc>" },
--         },
--     },
--     windows = { indent = 1 },
--     render = {
--         max_type_length = nil, -- Can be integer or nil.
--         max_value_lines = 100, -- Can be integer or nil.
--     },
-- }

local function local_launch_js()
    local cur_cwd = vim.fn.getcwd()
    local launch_file = cur_cwd .. '/.vscode/launch.json'
    local stat = vim.loop.fs_stat(launch_file)
    if stat then
        require("dap.ext.vscode").load_launchjs(nil, {
            cppdbg = { "c", "cpp" },
            lldb = { "c", "cpp" }
        })
    end
end

local_launch_js()

vim.api.nvim_create_autocmd("DirChanged", {
    callback = local_launch_js
})
