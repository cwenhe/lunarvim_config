local api = require('nvim-tree.api')

lvim.builtin.nvimtree.setup.view.mappings = {
    list = {
        {
            key = "v", action = api.node.open.vertical, mode = 'n'
        }
    }
}
