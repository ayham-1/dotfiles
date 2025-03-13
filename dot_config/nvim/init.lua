vim.loader.enable()

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Mapleaders
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Configurations 
vim.g.nocompatible = true
vim.g.ttimeoutlen = 0
vim.g.autoread = true
vim.g.smartcase = true
vim.g.incsearch = true
vim.g.nomodeline = true
vim.g.ruler = true
vim.g.mouse = "a"
vim.g.encoding = "utf-8"
vim.g.ttyfast = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.cmd("syntax on")
vim.cmd("set clipboard+=unnamedplus")

-- Colorscheme
vim.t_Co = 256
vim.cmd.colorscheme("industry")

--- Swap, Backup, Undo Directories
local homedir = vim.fn.expand("~/")
vim.opt.directory = homedir .. "/.cache/nvim/swap"
vim.opt.backupdir = homedir .. "/.cache/nvim/backup"
vim.opt.undodir = homedir .. "/.cache/nvim/undo"

-- Diagnostics
vim.diagnostic.config({
  virtual_text = false,
  signs = true,
  update_in_insert = false,
  underline = true,
})
vim.keymap.set('n', "<leader>do", "<cmd>lua vim.diagnostic.open_float()<CR>", { noremap = true, silent = true, desc = "Diagnostic Float" })

-- Setup lazy.nvim
require("lazy").setup {
  spec = {
    { "dstein64/vim-startuptime", event = "VeryLazy" },

    { "echasnovski/mini.nvim", version = "*" },
    { "nvim-tree/nvim-web-devicons", opts = {} }, 

    { "nvim-lua/plenary.nvim" },
    { "BurntSushi/ripgrep" },
    {  "nvim-treesitter/nvim-treesitter", build = function() require("nvim-treesitter.install").update({ with_sync = true })() end },
    { "sbdchd/neoformat" },

    { "nvim-telescope/telescope.nvim", tag = "0.1.8" },
    { "nvim-telescope/telescope-fzf-native.nvim", build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release" },

    { "neovim/nvim-lspconfig" },
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },

    { "hrsh7th/nvim-cmp" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/cmp-vsnip" },
    { "hrsh7th/vim-vsnip" },
    { "onsails/lspkind.nvim" },

    { "windwp/nvim-autopairs", event = "InsertEnter", config = true },
    { "hiphish/rainbow-delimiters.nvim" },

    { "folke/which-key.nvim",  event = "VeryLazy", opts = { preset = "helix" } },
  },
  defaults = { lazy = false, },
  install = { colorscheme = { "industry" } },
  checker = { enabled = false },
  performance = {
    rtp = {
      disabled_plugins = {
        "netrw", "netrwPlugin", "netrwSettings", "netrwFileHandlers", "gzip", "zip", "zipPlugin", "tar", "tarPlugin",
        "getscript", "getscriptPlugin", "vimball", "vimballPlugin", "2html_plugin", "logipat", "rrhelper",
        "spellfile_plugin", "matchit"
      },
    },
  },
}
require("mini.icons").setup()
require("rainbow-delimiters.setup").setup()

-- Lsp/Mason
require("mason").setup()
require("mason-lspconfig").setup()
require("mason-lspconfig").setup_handlers {
  function (server_name)
    local capabilities = require('cmp_nvim_lsp').default_capabilities()
    require("lspconfig")[server_name].setup { capabilities = capabilities }
  end
}

-- Telescope
require("telescope").setup()
require("telescope").load_extension("fzf")
local pickers = require("telescope.builtin")
vim.keymap.set('n', "<leader>tf", pickers.find_files, { desc = "Telescope find files" })
vim.keymap.set('n', "<leader>tg", pickers.live_grep, { desc = "Telescope live grep" })
vim.keymap.set('n', "<leader>tb", pickers.buffers, { desc = "Telescope buffers" })
vim.keymap.set('n', "<leader>th", pickers.help_tags, { desc = "Telescope help tags" })
vim.keymap.set('n', "<leader>tc", pickers.commands, { desc = "Telescope commands" })
vim.keymap.set('n', "<leader>ts", pickers.lsp_document_symbols, { desc = "Telescope document symbols" })
vim.keymap.set('n', "<leader>td", pickers.diagnostics, { desc = "Telescope document symbols" })
vim.keymap.set('n', "<leader>tgs", pickers.git_status, { desc = "Telescope git status" })
vim.keymap.set('n', "<leader>tgc", pickers.git_commits, { desc = "Telescope git commits" })

-- Completion
vim.opt.completeopt = { "menu", "menuone", "noselect" }
local cmp = require("cmp")
local lspkind = require('lspkind')
cmp.setup {
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  view = { entries = "custom" },
  mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      --{ name = 'vsnip' }, -- For vsnip users.
    }),
  formatting = { format = lspkind.cmp_format() }
}

-- Neoformatter
vim.api.nvim_exec([[
	augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
	augroup END
]], false)
