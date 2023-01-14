--vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use {
    'goolord/alpha-nvim',
    config = function ()
      require('alpha').setup(require('alpha.themes.startify').config)
    end
  }
  use {
    "lewis6991/hover.nvim",
    config = function()
      require("hover").setup {
	init = function()
	  -- Require providers
	  require("hover.providers.lsp")
	  require('hover.providers.gh')
	  require('hover.providers.gh_user')
	  -- require('hover.providers.jira')
	  require('hover.providers.man')
	  require('hover.providers.dictionary')
	end,
	preview_opts = {
	  border = nil
	},
	-- Whether the contents of a currently open hover window should be moved
	-- to a :h preview-window when pressing the hover keymap.
	preview_window = false,
	title = true
      }

      -- Setup keymaps
      vim.keymap.set("n", "K", require("hover").hover, {desc = "hover.nvim"})
      vim.keymap.set("n", "gK", require("hover").hover_select, {desc = "hover.nvim (select)"})
    end
  }

  use 'anuvyklack/hydra.nvim'
  use {
    'lewis6991/gitsigns.nvim',
    -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
  }
  
  use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }

  use {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup {
	-- your configuration comes here
	-- or leave it empty to use the default settings
	-- refer to the configuration section below
      }
    end
  }
  use 'simrat39/symbols-outline.nvim'

use 'lewis6991/impatient.nvim'
end)

