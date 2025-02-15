--- ~/nvim/lua/hwan/plugins/treesiter.lua

return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
        "windwp/nvim-ts-autotag",
    },
    config = function()
        local treesitter = require("nvim-treesitter.configs")

        treesitter.setup({
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            indent = { enable = true },
            autotag = {
                enable = true,
            },
            ensure_installed = {
		"make",
		"cmake",
		"csv",
		"diff",
		"jinja",
		"jinja_inline",
		"latex",
		"nix",
		"vue",
		"yaml",
		"scheme",
                "json",
                "yaml",
                "markdown",
                "markdown_inline",
                "vim",
                "dockerfile",
                "gitignore",
                "html",
                "css",
		"jq",
                "bash",
                "lua",
                "javascript",
                "typescript",
                "tsx",
		"elm",
		"gren",
		"roc",
		"haskell",
		"haskell_persistent",
		"go",
		"zig",
		"python",
		"cpp",
                "c",
                "rust",
            },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<C-space>",
                    node_incremental = "<C-space>",
                    scope_incremental = false,
                    node_decremental = "<bs>",
                },
            },
            rainbow = {
                enable = true,
                disable = { "html" },
                extended_mode = false,
                max_file_lines = nil,
            },
            context_commentstring = {
                enable = true,
                enable_autocmd = false,
            },
        })
    end,
}
