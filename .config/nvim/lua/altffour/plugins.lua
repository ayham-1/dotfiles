-- Packer and Plugins setup
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- common
	"sindrets/diffview.nvim",
	"kyazdani42/nvim-web-devicons",
	"romgrk/barbar.nvim",
	"L3MON4D3/LuaSnip",
	"lewis6991/gitsigns.nvim",
	"p00f/cphelper.nvim",
	"numToStr/Comment.nvim",
	"sbdchd/neoformat",
	"jiangmiao/auto-pairs",
	"andreasvc/vim-256noir",
	"searleser97/cpbooster.vim",
	"numToStr/Comment.nvim",
	"ggandor/lightspeed.nvim",
	"milkias17/reloader.nvim",
	"simrat39/symbols-outline.nvim",
	"jbyuki/venn.nvim",
	"j-hui/fidget.nvim",
	"sitiom/nvim-numbertoggle",
	"nvim-lua/plenary.nvim",
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		dependences = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-fzy-native.nvim",
		},
	},
	{
		"goolord/alpha-nvim",
		config = function()
			require("alpha").setup(require("alpha.themes.startify").config)
		end,
	},
	{
		"lewis6991/hover.nvim",
		config = function()
			require("hover").setup({
				init = function()
					-- Require providers
					require("hover.providers.lsp")
					require("hover.providers.gh")
					require("hover.providers.gh_user")
					-- require('hover.providers.jira')
					require("hover.providers.man")
					require("hover.providers.dictionary")
				end,
				preview_opts = {
					border = nil,
				},
				-- Whether the contents of a currently open hover window should be moved
				-- to a :h preview-window when pressing the hover keymap.
				preview_window = false,
				title = true,
			})

			-- Setup keymaps
			vim.keymap.set("n", "K", require("hover").hover, { desc = "hover.nvim" })
			vim.keymap.set("n", "gK", require("hover").hover_select, { desc = "hover.nvim (select)" })
		end,
	},

	"anuvyklack/hydra.nvim",
	{
		"lewis6991/gitsigns.nvim",
		-- tag = 'release' -- To use the latest release (do not use this if you build Neovim nightly or dev builds!)
	},

	{ "TimUntersberger/neogit", dependences = "nvim-lua/plenary.nvim" },

	{
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 2000
			require("which-key").setup({
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			})
		end,
	},

	-- colorschemes
	"savq/melange",
	"Lokaltog/vim-monotone",

	-- lsp
	"neovim/nvim-lspconfig",
	"hrsh7th/nvim-compe",
	"simrat39/symbols-outline.nvim",
	"glepnir/lspsaga.nvim",
	"williamboman/mason.nvim",
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},

	-- lint
	"mfussenegger/nvim-lint",

	-- nvim-cmp
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	"hrsh7th/nvim-cmp",

	-- snippets
	"L3MON4D3/LuaSnip",
	"saadparwaiz1/cmp_luasnip",
	"rafamadriz/friendly-snippets",

	"nvim-telescope/telescope-fzy-native.nvim",

	-- debug
	"puremourning/vimspector",

	-- writing
	"preservim/vim-pencil",
	"preservim/vim-markdown",
	"poljar/typos.nvim",
	"mickael-menu/zk-nvim",
	"folke/twilight.nvim",
	"folke/zen-mode.nvim",

	-- coding language specific
	"akinsho/flutter-tools.nvim",
	"ziglang/zig.vim",
})

require("twilight").setup({
	dimming = {
		alpha = 0.25,
		color = { "Normal", "#000000" },
	},
})
require("zen-mode").setup({
	width = 0.80,
})
require("diffview").setup()
require("luasnip/loaders/from_vscode").load()

require("Comment").setup()

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
	},
})

require("flutter-tools").setup({})
require("Comment").setup()

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	callback = function()
		require("lint").try_lint()
	end,
})

require("typos").setup()

require("neogit").setup({})
require("gitsigns").setup()
require("fidget").setup({})

-- neoformat on save
vim.cmd([[augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END]])
