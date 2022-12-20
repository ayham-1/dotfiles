require("altffour.telescope")
require("altffour.lsp")
require("altffour.autocompletion")

P = function(v)
  print(vim.inspect(v))
  return v
end

if pcall(require, 'plenary') then
  RELOAD = require('plenary.reload').reload_module

  R = function(name)
    RELOAD(name)
    return require(name)
  end
end

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
    width = 81,
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
