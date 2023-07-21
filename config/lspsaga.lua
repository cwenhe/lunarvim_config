-- lvim.lsp.buffer_mappings.normal_mode['gr'] = { " <Cmd>Lspsaga finder<CR>", "Find Reference" }
-- lvim.lsp.buffer_mappings.normal_mode['K'] = { " <Cmd>Lspsaga hover_doc<CR>", "Hover" }
-- lvim.lsp.buffer_mappings.normal_mode['gp'] = { " <Cmd>Lspsaga peek_definition<CR>", "Peek Definition" }
-- lvim.lsp.buffer_mappings.normal_mode['gt'] = { " <Cmd>Lspsaga peek_type_definition<CR>", "Peek Type Definition" }
-- lvim.lsp.buffer_mappings.normal_mode['gd'] = { " <Cmd>Lspsaga goto_definition<CR>", "Goto Definition" }
-- lvim.lsp.buffer_mappings.normal_mode['gm'] = { " <Cmd>Lspsaga outline<CR>", "Show Outline" }
-- 使用正常的key

require("lspsaga").setup({
    outline = {
        win_position = "right",
        win_width = 30,
        left_with = 0.2,
        preview_width = 0.4,
        show_detail = true,
        auto_preview = true,
        auto_refresh = true,
        auto_close = true,
        auto_resize = true,
        max_height = 0.5,
        detail = false,
        custom_sort = nil,
        layout = 'float',
        keys = {
            expand_or_jump = 'o',
            quit = "q",
        },
    },
    definition = {
        edit = "e",
        vsplit = "v",
        split = "i",
        tabe = "t",
        quit = "q",
    },
    -- callhierarchy = {
    --     show_detail = true,
    --     keys = {
    --         edit = "e",
    --         vsplit = "s",
    --         split = "i",
    --         tabe = "t",
    --         jump = "o",
    --         quit = "q",
    --         expand_collapse = "u",
    --     },
    -- },
})
