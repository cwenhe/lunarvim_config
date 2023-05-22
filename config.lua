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
