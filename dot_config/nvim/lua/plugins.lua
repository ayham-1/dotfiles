return {
	-- common
	"vhyrro/luarocks.nvim",
	{ "lewis6991/impatient.nvim", lazy = false },
	{ "folke/trouble.nvim", lazy = false, 
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		}, 
	},
	{ "f-person/git-blame.nvim", lazy = false },
	{ "sheerun/vim-polyglot", lazy = false },
	"nvim-lua/plenary.nvim",
	"ThePrimeagen/harpoon",
	"nvim-lua/popup.nvim",
	"sindrets/diffview.nvim",
	"nvim-tree/nvim-web-devicons",
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
	{ "j-hui/fidget.nvim", tag = "legacy" },
	{ "preservim/nerdtree", lazy = false },
	{ "mg979/vim-visual-multi", lazy = false },
	"stevearc/dressing.nvim",
	{
		"goolord/alpha-nvim",
	},
	"lewis6991/gitsigns.nvim",
	{ "declancm/cinnamon.nvim" },
	{ "ggandor/leap.nvim", lazy = false },
	{ "ThePrimeagen/vim-be-good", lazy = false },
	{ "MunifTanjim/nui.nvim", lazy = false },
	{ "neovim/nvim-lspconfig", lazy = false },
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		lazy = false,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
		},
	},
	--{"github/copilot.vim", lazy=false},
	{ "hiphish/rainbow-delimiters.nvim", lazy = false },
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		---@module "ibl"
		---@type ibl.config
		opts = {},
	},
	{ "karb94/neoscroll.nvim", lazy = false },

	-- colorschemes
	{ "tjdevries/colorbuddy.nvim", lazy = false },
	"savq/melange",
	"Lokaltog/vim-monotone",
	{"ellisonleao/gruvbox.nvim", lazy = false},
	"folke/tokyonight.nvim",
	{ "ishan9299/modus-theme-vim", lazy = false },
	{ "catppuccin/nvim", name = "catppuccin", lazy = false },

	-- lint
	{ "mfussenegger/nvim-lint", lazy = false },

	-- debug
	{ "mfussenegger/nvim-dap", lazy = false },
	{ "mfussenegger/nvim-dap-python", lazy = false },

	-- obsidian/markdown
	{ "epwalsh/obsidian.nvim", lazy = false, version = "*",
		opts = {
			workspaces = {
				{
					name = "uni",
					path = "~/dox/uni",
				},
			},
		},
	},
	{
		"vhyrro/luarocks.nvim",
		lazy = false,
		priority = 1001,
		opts = {
			rocks = { "magick" },
		},
	},
	{
		"3rd/image.nvim",
		version = "*",
		lazy = false,
		dependencies = { "luarocks.nvim" },
	},
	{
		"OXY2DEV/markview.nvim",
		lazy = false,      -- Recommended
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons"
		}
	},
	{ "jbyuki/nabla.nvim" },

	-- coding language specific
	"akinsho/flutter-tools.nvim",
	"ziglang/zig.vim",
	{"nvim-java/nvim-java", lazy=false},
	{ "nvim-neorg/neorg", lazy = false },
}
