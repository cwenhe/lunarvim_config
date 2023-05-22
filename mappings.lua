-- keymappings <https://www.lunarvim.org/docs/configuration/keybindings>
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<M-o>"] = ":ClangdSwitchSourceHeader<cr>"
lvim.keys.normal_mode["q"] = "<cmd> cclose<CR>"
lvim.keys.normal_mode["ng"] = "<cmd>lua require('neogen').generate() <CR>"
lvim.keys.normal_mode["ns"] = ":HopChar2<cr>"
lvim.keys.normal_mode["nw"] = ":HopWord<cr>"
lvim.keys.normal_mode["<M-h>"] = ":ToggleTerm size=40 direction=horizontal <CR>"
lvim.keys.term_mode["<M-h>"] = "<C-\\><C-n> <cmd> q<CR>"
lvim.keys.insert_mode["jk"] = "<esc>"

-- lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
-- lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

-- -- Use which-key to add extra bindings with the leader-key prefix
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["bw"] = { "<cmd>noautocmd w<cr>", "Save without formatting" }
lvim.builtin.which_key.mappings["bc"] = { "<cmd>enew<cr>", "new buffer" }
lvim.builtin.which_key.mappings["bC"] = { "ggdG", "clear buffer content" }

lvim.builtin.which_key.mappings["x"] = { "<cmd> bdelete!<CR>", "close buffer" }
lvim.builtin.which_key.mappings["c"] = {
    name = "cmake",
    c = { "<cmd> Task start cmake configure<cr>", "configure" },
    b = { "<cmd> Task start cmake build_all -j=30<cr>", "build" },
    s = { "<cmd> Task cancel<cr>", "cancel" },
    C = { "<cmd> Task start cmake clean<cr>", "clean" },
    t = { "<cmd> Task set_module_param cmake build_type<cr>", "change build type" },
    e = { "<cmd> FencView<cr>", "change file encoding" }
}
lvim.builtin.which_key.mappings["sq"] = { "<cmd> cope<CR>", "show quickfix" }

lvim.builtin.which_key.mappings["w"] = {
    name = "Windows",
    v = { "<cmd> vsplit <CR>", " vsplit window" },
    s = { "<cmd> split <CR>", " split window" },
    h = { "<cmd> wincmd h <CR>", "windows left" },
    j = { "<cmd> wincmd j <CR>", "windows down" },
    k = { "<cmd> wincmd k <CR>", "windows up" },
    l = { "<cmd> wincmd l <CR>", "windows right" },
    m = { "<cmd> exec 'vertical resize '. string(&columns * 0.66) <CR>", "windows resize max" },
    -- = = { "<cmd> exec 'vertical resize +'. string(&columns * 0.1) <CR>", "windows resize +" },
    -- - = { "<cmd> exec 'vertical resize -'. string(&columns * 0.1) <CR>", "windows resize -" }
    -- ["<leader>w"] = {"", " windows"},
}
lvim.builtin.which_key.mappings["w="] = { "<cmd> exec 'vertical resize +'. string(&columns * 0.1) <CR>",
    "windows resize +" }
lvim.builtin.which_key.mappings["w-"] = { "<cmd> exec 'vertical resize -'. string(&columns * 0.1) <CR>",
    "windows resize -" }
-----------------------  end dap config --------------------------------------


lvim.keys.normal_mode["<F5>"] = " <Cmd>lua require'dap'.continue()<CR>"
lvim.keys.normal_mode["<F10>"] = " <Cmd>lua require'dap'.step_over()<CR>"
lvim.keys.normal_mode["<F11>"] = " <Cmd>lua require'dap'.step_into()<CR>"
lvim.keys.normal_mode["<S-F10>"] = " <Cmd>lua require'dap'.step_out()<CR>"
lvim.keys.normal_mode["<F12>"] = " <Cmd>lua require'dap'.step_out()<CR>"
lvim.keys.normal_mode["<S-f5>"] = " <Cmd>lua require'dap'.continue()<CR>"
-- lvim.keys.normal_mode["<Leader>ds"] = { " <Cmd>lua require'dap'.terminate()<CR>", "terminate debug" },
lvim.keys.normal_mode["<F9>"] = " <Cmd>lua require'dap'.toggle_breakpoint()<CR>"


-----------------------  end dap ui config --------------------------------------
--
-- Now the '+' register will copy to system clipboard using OSC52
vim.keymap.set('n', '<leader>c', '"+y')
vim.keymap.set('n', '<leader>cc', '"+yy')
-----------------------end clipboard config -------------------------------------------

-- Now the '+' register will copy to system clipboard using OSC52
vim.keymap.set('n', '<leader>c', '"+y')
vim.keymap.set('n', '<leader>cc', '"+yy')
-----------------------end clipboard config -------------------------------------------
---