vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.mapleader = " "
vim.maplocalleader = " "

-- Lazy.nvim and Plugins setup
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

require("lazy").setup("plugins", {
	defaults = { lazy = true },
	checker = { enabled = true },
	dev = { path = "~/.local/src/", fallback = false },
	performance = {
		rtp = {
			disabled_plugins = {
				"gzip",
				"matchit",
				"matchparen",
				"netrwPlugin",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin",
			},
		},
	},
})

require("setups")
require("keymaps")
require("neovide")

-- general config
vim.g.auto_reload_config = true
vim.g.noswapfile = true
vim.g.nobackup = true
vim.g.nomodeline = true
vim.g.nocompatible = true
vim.g.noequalalways = true
vim.g.wrap = true
vim.g.textwidth = 80
vim.g.wrapmargin = 80
vim.g.ttimeoutlen = 0
vim.g.autoread = true
vim.g.ignorecase = true
vim.g.smartcase = true
vim.g.incsearch = true
vim.g.magic = true
vim.g.ruler = true
vim.g.nomodeline = true
vim.g.undofile = true
vim.g.mouse = a
vim.g.encoding = "utf-8"
--vim.g.autoindent = true
--vim.autoindent = true
--vim.smartindent = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.cmd("set scl=no")
vim.g.NERDTreeChDirMode = 2
vim.cmd("set clipboard+=unnamedplus")

vim.cmd("syntax on")

-- appearance
vim.number = true
-- toggle invisible characters
--set showbreak=↪
--set list
--set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮,space:·
--set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
vim.ttyfast = true

-- Setup theme.
vim.t_Co = 256
vim.o.background = "dark"
--let g:gruvbox_termcolors=16
--let g:gruvbox_contrast_light="hard"
--let g:gruvbox_contrast_dark="hard"
--colorscheme zellner
--colorscheme wal
--colorscheme 256_noir
vim.cmd("let g:gruvbox_contrast_light=\"hard\"")
vim.cmd("let g:gruvbox_contrast_dark=\"hard\"")
vim.cmd("colorscheme industry")

vim.api.nvim_exec([[
augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END
]], false)


--vim.cmd("hi CursorLine gui=underline cterm=underline")
--vim.cmd("au InsertEnter * set cul")
--vim.cmd("au InsertLeave * set nocul")
