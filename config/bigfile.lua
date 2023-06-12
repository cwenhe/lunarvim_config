require("bigfile").config {
    filesize = 1,      -- size of the file in MiB, the plugin round file sizes to the closest MiB
    pattern = { "*" }, -- autocmd pattern
    features = {       -- features to disable
        "indent_blankline",
        "illuminate",
        "treesitter",
        "syntax",
        "matchparen",
        "vimopts",
        "filetype",
    },
}
