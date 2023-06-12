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


local function init_package_path()
    --获取当前文件所在路径
    local __path = debug.getinfo(1, "S").source:sub(2)
    local __dir = string.match(__path, "(.*/)")
    package.path = __dir .. "?.lua;" .. package.path
end

init_package_path()

require("builtin_config")
require("mappings")
require("plugins")
require("config.dap")
require("config.tasks")
require("config.osc52")
require("config.null-ls")
require("config.tabnine")
require("config.cmp")
require("config.lspsaga")
require("config.luasnip")

-- lvim.autocommands = {
--     {
--         { "BufEnter" },
--         {
--             pattern = "*",
--             desc = "Disable syntax highlighting in files larger than 1MB",
--             callback = function(args)
--                 local highlighter = require "vim.treesitter.highlighter"
--                 local ts_was_active = highlighter.active[args.buf]
--                 local file_size = vim.fn.getfsize(args.file)
--                 if (file_size > 1024 * 1024) then
--                     vim.cmd("TSBufDisable highlight")
--                     vim.cmd("syntax off")
--                     vim.cmd("syntax clear")
--                     vim.cmd("IlluminatePauseBuf")
--                     vim.cmd("IndentBlanklineDisable")
--                     vim.cmd("NoMatchParen")
--                     if (ts_was_active) then
--                         vim.notify("File larger than 1MB, turned off syntax highlighting")
--                     end
--                 end
--             end
--         }
--     }
-- }

require("bigfile").config {
    filesize = 1,      -- size of the file in MiB, the plugin round file sizes to the closest MiB
    pattern = { "*" }, -- autocmd pattern
    features = {       -- features to disable
        "indent_blankline",
        "illuminate",
        "treesitter",
        "syntax",
        "matchparen",
        "vimopts",
        "filetype",
    },
}
