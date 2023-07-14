lvim.builtin.telescope.defaults.file_ignore_patterns = { "^./.git/", "^./build/", "^.vscode/", "%%-test%-data",
    "^.cache/" }
lvim.builtin.telescope.defaults.path_display = {
    shorten = {
        len = 3
    }
}


local actions = require("telescope.actions")
lvim.builtin.telescope.defaults.mappings.n["q"] = actions.close
lvim.builtin.telescope.defaults.mappings.n["v"] = actions.select_vertical
