-- require("bigfile").config {
--     filesize = 1, -- size of the file in MiB, the plugin round file sizes to the closest MiB
--     -- pattern = { "*" }, -- autocmd pattern
--     pattern = function(bufnr, filesize_mib)
--         -- you can't use `nvim_buf_line_count` because this runs on BufReadPre
--         -- local file_contents = vim.fn.readfile(vim.api.nvim_buf_get_name(bufnr))
--         -- local file_length = #file_contents
--         local filetype = vim.filetype.match({ buf = bufnr })
--         local file_size = vim.fn.getfsize(vim.api.nvim_buf_get_name(bufnr))
--         print(file_size)
--         print(file_size)
--         print(file_size)
--         print(file_size)
--         print(file_size)
--         if file_size > 1024 * 10 and filetype == "json" then
--             return true
--         end
--     end,
--     features = { -- features to disable
--         "indent_blankline",
--         "illuminate",
--         "treesitter",
--         "syntax",
--         "matchparen",
--         "vimopts",
--         "filetype",
--     },
-- }
lvim.builtin.bigfile.config.pattern = function(bufnr, filesize_mib)
    -- you can't use `nvim_buf_line_count` because this runs on BufReadPre
    -- local file_contents = vim.fn.readfile(vim.api.nvim_buf_get_name(bufnr))
    -- local file_length = #file_contents
    local filetype = vim.filetype.match({ buf = bufnr })
    local file_size = vim.fn.getfsize(vim.api.nvim_buf_get_name(bufnr))
    local max_file_size = 1024 * 10
    if file_size > max_file_size and filetype == "json" then
        print("current file size:" .. file_size .. " more than max size is:" .. max_file_size)
        return true
    end
end
