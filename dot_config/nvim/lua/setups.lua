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
require("neoscroll").setup({ easing = "linear" })
local highlight = {
    "RainbowRed",
    "RainbowYellow",
    "RainbowBlue",
    "RainbowOrange",
    "RainbowGreen",
    "RainbowViolet",
    "RainbowCyan",
}
local hooks = require "ibl.hooks"
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
    vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
    vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
    vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
    vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
    vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
    vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
end)

vim.g.rainbow_delimiters = { highlight = highlight }
require("ibl").setup { scope = { highlight = highlight } }

hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)

require("colorbuddy").setup()
