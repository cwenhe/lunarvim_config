lvim.lsp.buffer_mappings.normal_mode['gr'] = { " <Cmd>Lspsaga lsp_finder<CR>", "Find Reference" }
lvim.lsp.buffer_mappings.normal_mode['K'] = { " <Cmd>Lspsaga hover_doc<CR>", "Hover" }
lvim.lsp.buffer_mappings.normal_mode['gp'] = { " <Cmd>Lspsaga peek_definition<CR>", "Peek Definition" }
lvim.lsp.buffer_mappings.normal_mode['gt'] = { " <Cmd>Lspsaga peek_type_definition<CR>", "Peek Type Definition" }
lvim.lsp.buffer_mappings.normal_mode['gd'] = { " <Cmd>Lspsaga goto_definition<CR>", "Goto Definition" }
lvim.lsp.buffer_mappings.normal_mode['gm'] = { " <Cmd>Lspsaga outline<CR>", "Show Outline" }
lvim.builtin.which_key.mappings["la"] = { "<cmd>  Lspsaga code_action<CR>", "Code Action" }
lvim.builtin.which_key.mappings["ls"] = { "<cmd>  Lspsaga outline<CR>", "Document symbol" }
-- lvim.builtin.which_key.mappings["lr"] = { "<cmd>  Lspsaga rename<CR>", "Rename" }
lvim.builtin.which_key.mappings["lci"] = { "<cmd>  Lspsaga incoming_calls<CR>", "Incomming calls" }
lvim.builtin.which_key.mappings["lco"] = { "<cmd>  Lspsaga outgoing_calls<CR>", "OutGoing calls" }
lvim.builtin.which_key.mappings["ldp"] = { "<cmd>  Lspsaga diagnostic_jump_prev <CR>", "Dianostic Jump Prev" }
lvim.builtin.which_key.mappings["ldn"] = { "<cmd>  Lspsaga diagnostic_jump_next<CR>", "Diagnostic Jump Next" }


require("lspsaga").setup({
    outline = {
        win_position = "right",
        win_with = "",
        win_width = 30,
        preview_width = 0.4,
        show_detail = true,
        auto_preview = true,
        auto_refresh = true,
        auto_close = true,
        auto_resize = true,
        custom_sort = nil,
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
