local compare = require('cmp.config.compare')
-- lvim.builtin.cmp.sorting = {
--     priority_weight = 2,
--     comparators = {
--         require('cmp_tabnine.compare'),
--         compare.offset,
--         compare.exact,
--         compare.score,
--         compare.recently_used,
--         compare.kind,
--         compare.sort_text,
--         compare.length,
--         compare.order,
--     },
-- }

lvim.builtin.cmp.sorting = {
    priority_weight = 2,
    comparators = {
        require('cmp_tabnine.compare'),
        -- compare.score_offset, -- not good at all
        compare.locality,
        compare.recently_used,
        compare.score, -- based on :  score = score + ((#sources - (source_index - 1)) * sorting.priority_weight)
        compare.offset,
        compare.order,
        -- compare.scopes, -- what?
        -- compare.sort_text,
        -- compare.exact,
        -- compare.kind,
        -- compare.length, -- useless
    }
}

-- 设置最大提示数量
for k, v in ipairs(lvim.builtin.cmp.sources) do
    -- print(k, v.name, v.max_item_count)
    v.max_item_count = 20
end

lvim.builtin.cmp.formatting = {
    format = function(entry, vim_item)
        ---设置提示宽度为屏幕大小的三分之一
        vim_item.abbr = string.sub(vim_item.abbr, 1, vim.o.columns / 3)
        return vim_item
    end
}

lvim.builtin.cmp.matching = {
    disallow_fuzzy_matching = true,
    disallow_fullfuzzy_matching = true,
    disallow_partial_matching = true,
    disallow_prefix_unmatching = true,
}
-- lvim.builtin.cmp.completion.keyword_length = 2
-- lvim.builtin.treesitter.indent = {
--     disable = { "c", "cpp" },
--     enabled = true
-- }