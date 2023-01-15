local M = {
	"nvim-telescope/telescope.nvim",
	tags = "1.0.0",
	keys = { { "<leader>f" } },
	dependencies = {
		"nvim-telescope/telescope-fzy-native.nvim",
	},
}

function M.config()
	vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
	vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>")
	vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>")
	vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>")

	local actions = require("telescope.actions")
	require("telescope").setup({
		defaults = {
			file_sorter = require("telescope.sorters").get_fzy_sorter,
			prompt_prefix = " >",
			color_devicons = true,

			file_previewer = require("telescope.previewers").vim_buffer_cat.new,
			grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
			qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,

			mappings = {
				i = {
					["<C-x>"] = false,
					["<C-q>"] = actions.send_to_qflist,
				},
			},
		},
		extensions = {
			fzy_native = {
				override_generic_sorter = false,
				override_file_sorter = true,
			},
		},
	})

	require("telescope").load_extension("fzy_native")
end

return M
