-----------------------begin terminal config -------------------------------------------
lvim.builtin.terminal.execs = {
    { nil, "<M-r>", "vertical Terminal",   "vertical",   0.3 },
    { nil, "<M-b>", "horizontal Terminal", "horizontal", 0.4 },
    { nil, "<M-h>", "Float Terminal",      "float",      nil },
}

function _G.set_terminal_keymaps()
    local opts = { buffer = 0 }
    -- vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
    -- vim.keymap.set('t', 'q', [[<C-\><C-n><Cmd>q<CR>]], opts)
    vim.keymap.set('t', 'qq', [[<Cmd>q<CR>]], opts)
    vim.keymap.set('n', 'q', [[<Cmd>q<CR>]], opts)
    -- vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
    -- vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
    -- vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
    -- vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
    -- vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
    -- vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')


----------------------- end terminal config  -------------------------------------------
