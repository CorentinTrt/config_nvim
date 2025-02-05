require("telescope").setup({
	defaults = {
		border = {
			prompt = { 1, 1, 1, 1 },
			results = { 1, 1, 1, 1 },
			preview = { 1, 1, 1, 1 },
		},
		borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
	},
	pickers = {
		find_files = {
			hidden = true,
		},
	},
	extensions = {
		file_browser = {
			grouped = true,
			hijack_netrw = true,
			hidden = true,
		},
	},
})

require("telescope").load_extension("file_browser")
