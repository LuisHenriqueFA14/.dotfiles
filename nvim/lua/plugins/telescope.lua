local actions = require('telescope.actions')
require('telescope').setup{
    defaults = {
        file_ignore_patterns = {
            ".git",
            "node_modules",
			"autoload",
			"target",
			"include"
        },
        mappings = {
            i = {
                ["<C-k>"] = actions.move_selection_previous,
                ["<C-j>"] = actions.move_selection_next,
                ["<esc>"] = actions.close
            }
        }
    },
}
