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


local __path = debug.getinfo(1, "S").source:sub(2)
local __dir = string.match(__path, "(.*/)")
package.path = __dir .. "?.lua;" .. package.path
require("builtin_config")
require("mappings")
require("plugins")
require("my_plugins.dap")
require("my_plugins.tasks")
require("my_plugins.osc52")
require("my_plugins.null-ls")
