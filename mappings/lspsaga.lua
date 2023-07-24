-----------------------begin Lspsaga config -------------------------------------------
lvim.keys.normal_mode['gr'] = " <Cmd>Lspsaga finder<CR>"
lvim.keys.normal_mode['K'] = " <Cmd>Lspsaga hover_doc<CR>"
lvim.keys.normal_mode['gp'] = " <Cmd>Lspsaga peek_definition<CR>"
lvim.keys.normal_mode['gt'] = " <Cmd>Lspsaga peek_type_definition<CR>"
lvim.keys.normal_mode['gd'] = " <Cmd>Lspsaga goto_definition<CR>"
lvim.keys.normal_mode['gm'] = " <Cmd>Lspsaga outline<CR>"
lvim.builtin.which_key.mappings["la"] = { "<cmd>  Lspsaga code_action<CR>", "Code Action" }
lvim.builtin.which_key.mappings["ls"] = { "<cmd>  Lspsaga outline<CR>", "Document symbol" }
lvim.builtin.which_key.mappings["lr"] = { "<cmd>  Lspsaga rename<CR>", "Rename" }
-- lvim.builtin.which_key.mappings["lci"] = { "<cmd>  Lspsaga incoming_calls<CR>", "Incomming calls" }
-- lvim.builtin.which_key.mappings["lco"] = { "<cmd>  Lspsaga outgoing_calls<CR>", "OutGoing calls" }
lvim.builtin.which_key.mappings["ldp"] = { "<cmd>  Lspsaga diagnostic_jump_prev <CR>", "Dianostic Jump Prev" }
lvim.builtin.which_key.mappings["ldn"] = { "<cmd>  Lspsaga diagnostic_jump_next<CR>", "Diagnostic Jump Next" }

lvim.builtin.which_key.mappings["lc"] = {
    name = "In/Out Calls",
    ["i"] = { "<cmd>  Lspsaga incoming_calls<CR>", "Incomming calls" },
    ["o"] = { "<cmd>  Lspsaga outgoing_calls<CR>", "OutGoing calls" }
}

-----------------------end Lspsaga config -------------------------------------------
