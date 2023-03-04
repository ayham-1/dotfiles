return {
	-- common
	{ "lewis6991/impatient.nvim", lazy = false },
	"nvim-lua/plenary.nvim",
	"nvim-lua/popup.nvim",
	"sindrets/diffview.nvim",
	"kyazdani42/nvim-web-devicons",
	"lewis6991/gitsigns.nvim",
	"p00f/cphelper.nvim",
	"numToStr/Comment.nvim",
	{ "sbdchd/neoformat", lazy = false },
	{ "windwp/nvim-autopairs", lazy = false },
	"andreasvc/vim-256noir",
	"numToStr/Comment.nvim",
	"ggandor/lightspeed.nvim",
	"milkias17/reloader.nvim",
	"simrat39/symbols-outline.nvim",
	{ "jbyuki/venn.nvim", lazy = false },
	"j-hui/fidget.nvim",
	{ "preservim/nerdtree", lazy = false },
	{ "mg979/vim-visual-multi", lazy = false },
	"stevearc/dressing.nvim",
	{
		"goolord/alpha-nvim",
	},
	"lewis6991/gitsigns.nvim",
	{ "TimUntersberger/neogit", dependencies = "nvim-lua/plenary.nvim" },
	{
		"folke/which-key.nvim",
		lazy = false,
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 900
			require("which-key").setup({
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			})
		end,
	},
	{ "declancm/cinnamon.nvim" },
	{ "ThePrimeagen/vim-be-good", lazy = false },

	-- colorschemes
	{ "tjdevries/colorbuddy.nvim", lazy = false },
	"savq/melange",
	"Lokaltog/vim-monotone",
	"ellisonleao/gruvbox.nvim",
	"folke/tokyonight.nvim",
	{ "ishan9299/modus-theme-vim", lazy = false },

	-- lint
	{ "mfussenegger/nvim-lint", lazy = false },

	-- debug
	"puremourning/vimspector",

	-- writing
	{ "preservim/vim-pencil", lazy = false },
	"preservim/vim-markdown",
	"poljar/typos.nvim",
	"folke/twilight.nvim",
	"folke/zen-mode.nvim",

	-- coding language specific
	"akinsho/flutter-tools.nvim",
	"ziglang/zig.vim",
}
