-- general
lvim.log.level = "info"
lvim.lsp.log_levels = "OFF"
-- lvim.lsp.log_levels = "OFF"
lvim.format_on_save = {
    enabled = true,
    pattern = "*.lua",
    timeout = 1000,
}
-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false
lvim.leader = "space"

-- -- Change theme settings
lvim.colorscheme = "tokyonight-day"

lvim.builtin.lualine.style = "default"
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- Automatically install missing parsers when entering buffer
lvim.builtin.treesitter.auto_install = true

lvim.builtin.treesitter.highlight.disable = function(lang, buf)
    if lang == "json" then
        return true
    end
    -- local max_filesize = 100 * 1024 -- 100 KB
    -- local max_filesize = 100 -- 100 KB
    -- local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
    -- if ok and stats and stats.size > max_filesize then
    --     return true
    -- end
    return false
end

lvim.builtin.treesitter.indent.disable = function(lang, buf)
    if lang == "c" or lang == "cpp" then
        return true
    end
    local max_filesize = 100 -- 100 KB
    local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
    if ok and stats and stats.size > max_filesize then
        return true
    end
    return false
end


-- 设置最大提示数量
for k, v in ipairs(lvim.builtin.cmp.sources) do
    -- print(k, v.name, v.max_item_count)
    v.max_item_count = 8
end

lvim.builtin.cmp.formatting = {
    format = function(entry, vim_item)
        ---设置提示宽度为屏幕大小的三分之一
        vim_item.abbr = string.sub(vim_item.abbr, 1, vim.o.columns / 3)
        return vim_item
    end
}
-- lvim.builtin.cmp.completion.keyword_length = 2
-- lvim.builtin.treesitter.indent = {
--     disable = { "c", "cpp" },
--     enabled = true
-- }
lvim.builtin.project.patterns = { ".git", "conf.json" }
lvim.builtin.luasnip.sources.friendly_snippets = false
-- lvim.builtin.luasnip.sources.friendly_snippets = false
lvim.builtin.indentlines.options.show_trailing_blankline_indent = true
lvim.builtin.indentlines.options.show_current_context = true
lvim.builtin.telescope.defaults.path_display = {
    shorten = {
        len = 3
    }
}
lvim.builtin.telescope.defaults.file_ignore_patterns = { "^./.git/", "^./build/", "^.vscode/", "%%-test%-data",
    "^.cache/" }
lvim.builtin.dap.active = true

-- lvim.builtin.treesitter.ignore_install = { "haskell" }

-- -- generic LSP settings <https://www.lunarvim.org/docs/languages#lsp-support>

-- --- disable automatic installation of servers
-- lvim.lsp.installer.setup.automatic_installation = false

-- ---configure a server manually. IMPORTANT: Requires `:LvimCacheReset` to take effect
-- ---see the full default list `:lua =lvim.lsp.automatic_configuration.skipped_servers`
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pyright", opts)

-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. IMPORTANT: Requires `:LvimCacheReset` to take effect
-- ---`:LvimInfo` lists which server(s) are skipped for the current filetype
-- lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
--   return server ~= "emmet_ls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end
