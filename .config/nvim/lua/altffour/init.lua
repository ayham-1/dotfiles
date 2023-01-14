vim.g.mapleader=" "
vim.g.auto_reload_config = true;
vim.g.gui_font_default_size = 13
vim.g.gui_font_size = vim.g.gui_font_default_size
vim.g.gui_font_face = "Monospace"

RefreshGuiFont = function()
  vim.opt.guifont = string.format("%s:h%s",vim.g.gui_font_face, vim.g.gui_font_size)
end

ResizeGuiFont = function(delta)
  vim.g.gui_font_size = vim.g.gui_font_size + delta
  RefreshGuiFont()
end

ResetGuiFont = function ()
  vim.g.gui_font_size = vim.g.gui_font_default_size
  RefreshGuiFont()
end

-- Call function on startup to set default value
ResetGuiFont()

-- Keymaps

local opts = { noremap = true, silent = true }

vim.keymap.set({'n', 'i'}, "<C-+>", function() ResizeGuiFont(1)  end, opts)
vim.keymap.set({'n', 'i'}, "<C-->", function() ResizeGuiFont(-1) end, opts)
vim.keymap.set({'n', 'i'}, "<C-BS>", function() ResetGuiFont() end, opts)

require("altffour.plugins")
require("altffour.telescope")
require("altffour.lsp")
require("altffour.autocompletion")
require("altffour.zk")
require("altffour.cmp")
require("altffour.snip")
require("altffour.hydra")

P = function(v)
  print(vim.inspect(v))
  return v
end

_G.__luacache_config = {
  chunks = {
    enable = true,
    path = vim.fn.stdpath('cache')..'/luacache_chunks',
  },
  modpaths = {
    enable = true,
    path = vim.fn.stdpath('cache')..'/luacache_modpaths',
  }
}
require('impatient')

require('twilight').setup({
		dimming = {
				alpha = 0.25,
				color = { "Normal", "#000000" },
		}
})
require('zen-mode').setup({
		width = .80,
})
--require('lualine').setup({
--	options = {
--		theme = 'gruvbox'
--	}
--})
require('diffview').setup()
--"vim.opt.termguicolors = true
require('bufferline').setup()
require('luasnip/loaders/from_vscode').load()

require('Comment').setup()

require("zen-mode").setup({
  window = {
    width = 80,
    options = {
      signcolumn = "no", -- disable signcolumn
      number = false, -- disable number column
      relativenumber = false, -- disable relative numbers
      cursorline = false, -- disable cursorline
      cursorcolumn = false, -- disable cursor column
      foldcolumn = "0", -- disable fold column
      list = false, -- disable whitespace characters
    },
  }
})

require("flutter-tools").setup{}
require('Comment').setup()

-- nvim-lint
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})


require("typos").setup()

require('neogit').setup {}
require('gitsigns').setup ()
