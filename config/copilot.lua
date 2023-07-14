require("copilot_cmp").setup({})
table.insert(lvim.builtin.cmp.sources, 1, { name = "copilot" })
local has_words_before = function()
    if vim.api.nvim_buf_get_option(0, "buftype") == "prompt" then return false end
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_text(0, line - 1, 0, line - 1, col, {})[1]:match("^%s*$") == nil
end
lvim.builtin.cmp.mapping =
{
    ["<Tab>"] = vim.schedule_wrap(function(fallback)
        if require('cmp').visible() and has_words_before() then
            require('cmp').select_next_item({ behavior = require('cmp').SelectBehavior.Select })
        else
            fallback()
        end
    end),
}
