local actions = require("telescope.actions")
lvim.builtin.telescope.defaults.mappings.n["q"] = actions.close
lvim.builtin.telescope.defaults.file_ignore_patterns = { "^./.git/", "^./build/", "^.vscode/", "%%-test%-data",
    "^.cache/" }
lvim.builtin.telescope.defaults.path_display = {
    shorten = {
        len = 3
    }
}


-- lvim.builtin.telescope.defaults.mappings.n["ww"] = function(prompt_bufnr)
--     -- Use nvim-window-picker to choose the window by dynamically attaching a function
--     local action_set = require('telescope.actions.set')
--     local action_state = require('telescope.actions.state')

--     local picker = action_state.get_current_picker(prompt_bufnr)
--     picker.get_selection_window = function(picker, entry)
--         local picked_window_id = require('window-picker').pick_window() or vim.api.nvim_get_current_win()
--         -- Unbind after using so next instance of the picker acts normally
--         picker.get_selection_window = nil
--         return picked_window_id
--     end

--     return action_set.edit(prompt_bufnr, 'edit')
-- end



-- function(prompt_bufnr)
--     actions.select_horizontal({ prompt_bufnr })
--     --     local selection = require("telescope.actions.state").get_selected_entry()
--     -- local dir = vim.fn.fnamemodify(selection.path, ":p:h")
--     -- require("telescope.actions").close(prompt_bufnr)
--     -- -- Depending on what you want put `cd`, `lcd`, `tcd`
--     -- vim.cmd(string.format("silent lcd %s", dir))
-- end
-- local action_layout = require("telescope.actions.layout")
-- lvim.builtin.telescope.defaults.mappings.i["<M-p>"] = action_layout.toggle_preview
