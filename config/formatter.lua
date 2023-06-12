-- Utilities for creating configurations
local util = require "formatter.util"

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup {
    -- Enable or disable logging
    logging = true,
    -- Set the log level
    log_level = vim.log.levels.WARN,
    -- All formatter configurations are opt-in
    filetype = {
        -- Formatter configurations for filetype "lua" go here
        -- and will be executed in order
        lua = require("formatter.filetypes.lua"),
        json = require("formatter.filetypes.json").jq,

        cpp = require("formatter.filetypes.cpp").clangformat,
        cmake = require("formatter.filetypes.cmake").cmakeformat,
        -- Use the special "*" filetype for defining formatter configurations on
        -- any filetype
        ["*"] = {
            -- "formatter.filetypes.any" defines default configurations for any
            -- filetype
            function()
                -- 大的json文件会检测不出来文件格式
                local extension = util.get_current_buffer_file_extension()
                if extension == "json" or extension == "JSON" then
                    return require("formatter.filetypes.json").jq()
                end
            end,
            require("formatter.filetypes.any").remove_trailing_whitespace
            -- require("formatter.filetypes.any")jq.
        }
    }
}

lvim.builtin.which_key.mappings['df'] = { "<cmd>  Format<CR>", "format document" }
-- lvim.lsp.buffer_mappings.normal_mode['gd'] = { " <Cmd>Lspsaga goto_definition<CR>", "Goto Definition" }
