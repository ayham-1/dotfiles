local M = {
	"xeluxee/competitest.nvim",
	keys = { { "<leader>t" } },
	dependencies = {
		"MunifTanjim/nui.nvim",
	},
	dev = true,
}

function M.config()
	-- competitive programing
	--vim.keymap.set("n", "<leader>tt", ":CompetiTestRun<CR>")
	vim.keymap.set("n", "<leader>trp", ":CompetiTestReceive problem<CR>")
	vim.keymap.set("n", "<leader>trc", ":CompetiTestReceive contest<CR>")
	vim.keymap.set("n", "<leader>ta", ":CompetiTestAdd<CR> ")
	require("competitest").setup({
		template_file = "~/.config/cpbooster/template.$(FEXT)",
	})
end

return M
