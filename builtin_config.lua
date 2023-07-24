-- general
lvim.log.level = "error"
lvim.lsp.log_levels = vim.log.levels.OFF
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
-- lvim.builtin.lualine.options.theme = 'powerline_dark'

-- Automatically install missing parsers when entering buffer
lvim.builtin.treesitter.auto_install = true


lvim.builtin.project.patterns = { ".git", "conf.json" }
lvim.builtin.luasnip.sources.friendly_snippets = false
-- lvim.builtin.luasnip.sources.friendly_snippets = false
lvim.builtin.indentlines.options.show_trailing_blankline_indent = true
lvim.builtin.indentlines.options.show_current_context = true
lvim.builtin.dap.active = true

-- lvim.builtin.gitsigns.opts.current_line_blame = true
-- lvim.builtin.gitsigns.opts.current_line_blame_opts.virt_text_pos = 'right_align'
