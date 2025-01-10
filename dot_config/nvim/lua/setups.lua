-- Setups of plugins who don't deserve a file
--
require("impatient")

require("alpha").setup(require("alpha.themes.startify").config)

require("mason").setup()
require("mason-lspconfig").setup()

require("dressing").setup()

require("diffview").setup()
require("luasnip/loaders/from_vscode").load()
require("luasnip.loaders.from_vscode").lazy_load()

require("java").setup()
require('lspconfig').jdtls.setup({})

require("Comment").setup()

require("flutter-tools").setup({})
require("Comment").setup()

require("lint").linters_by_ft = {
	markdown = { "markdownlint" },
}

--require("image").setup({})

--vim.api.nvim_create_autocmd({ "BufWritePost" }, {
--	callback = function()
--		require("lint").try_lint()
--	end,
--})

--require("typos").setup()

require("gitsigns").setup()
require("fidget").setup({})
require("nvim-autopairs").setup({})
require("nvim-autopairs").enable()
require("cinnamon").setup({})
require("leap").add_default_mappings({})

-- colorschemes
require("colorbuddy").setup()
