vim.g.mapleader = " "
vim.g.maplocalleader = " "
require("plugins")
require("telescope")
require("lsp")
require("zk")
require("cmp")
require("snip")
require("hydra")
require("keymaps")
require("neovide")

-- general config
vim.g.auto_reload_config = true
vim.g.termguicolors = true
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
vim.g.backspace = indent, eol, start
vim.g.ignorecase = true
vim.g.smartcase = true
vim.g.incsearch = true
vim.g.magic = true
vim.g.ruler = true
vim.g.wildmenu = true
vim.g.nosmd = true
vim.g.hidden = true
vim.g.nomodeline = true
vim.g.undofile = true
vim.g.tabstop = 4
vim.g.softtabstop = 4
vim.g.shiftwidth = 4
vim.g.mouse = a
vim.g.encoding = "utf-8"
vim.g.backspace = indent, eol, start
vim.opt.number = true
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
--let g:gruvbox_termcolors=16
--let g:gruvbox_contrast_light="hard"
--let g:gruvbox_contrast_dark="hard"
--colorscheme zellner
--colorscheme wal
--colorscheme 256_noir
vim.cmd("colorscheme melange")
