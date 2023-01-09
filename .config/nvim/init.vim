call plug#begin()
"Plug 'ctrlpvim/ctrlp.vim'
Plug 'ThePrimeagen/vim-be-good'
Plug 'vimwiki/vimwiki'
Plug 'mhinz/vim-startify'
Plug 'liuchengxu/vim-which-key'
Plug 'folke/twilight.nvim'
Plug 'folke/zen-mode.nvim'
"Plug 'hoob3rt/lualine.nvim'
Plug 'windwp/nvim-autopairs'
Plug 'sindrets/diffview.nvim'
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'akinsho/nvim-bufferline.lua'
Plug 'L3MON4D3/LuaSnip'
Plug 'lewis6991/gitsigns.nvim'
Plug 'nekonako/xresources-nvim'
Plug 'tpope/vim-obsession'
Plug 'p00f/cphelper.nvim'
Plug 'Yggdroot/indentLine'
Plug 'sbdchd/neoformat'
Plug 'numToStr/Comment.nvim'
Plug 'sbdchd/neoformat'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-sleuth'
Plug 'andreasvc/vim-256noir'
Plug 'searleser97/cpbooster.vim'
Plug 'numToStr/Comment.nvim'
Plug 'ggandor/lightspeed.nvim'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'simrat39/symbols-outline.nvim'
Plug 'glepnir/lspsaga.nvim'

" nvim-cmp
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" luasnip
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'rafamadriz/friendly-snippets'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

Plug 'ThePrimeagen/harpoon'
Plug 'nvim-tree/nvim-tree.lua'

" Neovim Tree Sitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

Plug 'lervag/vimtex'

" debugging
Plug 'puremourning/vimspector'

" zig
Plug 'ziglang/zig.vim'

" Writing
Plug 'preservim/vim-pencil'
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'

" flutter
Plug 'akinsho/flutter-tools.nvim'

Plug 'Lokaltog/vim-monotone'

Plug 'mickael-menu/zk-nvim'

call plug#end()

" <Plug>VimspectorStop
" <Plug>VimspectorPause
" <Plug>VimspectorAddFunctionBreakpoint

" Setup lua
lua require("altffour")

" General
"
filetype plugin on
filetype plugin indent on
set noswapfile
set nobackup
set nomodeline
set nocompatible
set noequalalways
set wrap
set textwidth=80
set wrapmargin=80
set ttimeoutlen=0
set clipboard+=unnamed
set autoread
set backspace=indent,eol,start
set ignorecase
set smartcase
set incsearch
set magic
set ruler
set wildmenu
set wildchar=<TAB>
set nosmd
set hidden
set nomodeline
set undofile
setlocal spell spelllang=en_us
set tabstop=4
set softtabstop=4
set shiftwidth=4
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")

" vimtex
let g:vimtex_view_method="zathura"

" LSP
" Set completeopt to have a better completion experience
" :help completeopt
" menuone: popup even when there's only one match
" noinsert: Do not insert text until a selection is made
" noselect: Do not select, force user to select one from the menu
set completeopt=menuone,noinsert,noselect

" LuaSnip
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>

snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>

imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'

" Appearance
set number
" toggle invisible characters
"set showbreak=↪
"set list
"set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮,space:·
"set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set ttyfast

" Setup theme.
set t_Co=256
"let g:gruvbox_termcolors=16
"let g:gruvbox_contrast_light="hard"
"let g:gruvbox_contrast_dark="hard"
"colorscheme zellner
"colorscheme wal
colorscheme 256_noir
"set background=dark
set termguicolors
hi Pmenu ctermbg=black
hi PmenuSel ctermbg=white
hi PmenuSbar ctermbg=black
hi PmenuThumb ctermbg=black

"set cursorline
"set cursorcolumn
"highlight Cursor ctermbg=NONE ctermfg=white
" Default Colors for CursorLine
"highlight  CursorLine ctermbg=White ctermfg=Black
"highlight  CursorColumn ctermbg=White ctermfg=Black

" Change Color when entering Insert Mode
"autocmd InsertLeave * highlight  CursorLine ctermbg=White ctermfg=Black
"
"" Revert Color to default when leaving Insert Mode
"autocmd InsertEnter * highlight  CursorLine ctermbg=Black ctermfg=White
"
"" Change Color when entering Insert Mode
"autocmd InsertLeave * highlight  CursorColumn ctermbg=White ctermfg=Black
"
"" Revert Color to default when leaving Insert Mode
"autocmd InsertEnter * highlight  CursorColumn ctermbg=Black ctermfg=White

" Leader keys
let mapleader = " "
map <leader>e :bufdo e!<CR>
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
nnoremap Y y$
nnoremap n nzzzv
nnoremap N nzzzv
nnoremap J mzJ`z
inoremap , ,<C-g>u
inoremap . .<C-g>u
inoremap ! !<C-g>u
inoremap ? ?<C-g>u

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-1<CR>gv=gv
vnoremap <C-j> :m .+1<CR>==
nnoremap <leader>j :m .+1<CR>==
vnoremap <C-k> :m .-1<CR>==
nnoremap <leader>k :m .-1<CR>==

nnoremap <silent> <leader>ac :center<CR>
nnoremap <silent> <leader>ar :right<CR>
nnoremap <silent> <leader>al :left<CR>

nnoremap <silent> <leader>bb :buffers<CR>
nnoremap <silent> <leader>bn :bn<CR>
nnoremap <silent> <leader>bp :bp<CR>
nnoremap <silent> <leader>bd :bd<CR>

nnoremap <silent> <leader>ws :split<CR>
nnoremap <silent> <leader>wvs :vsplit<CR>
nnoremap <silent> <leader>wc :close<CR>

noremap <up> <Nop>
noremap <down> <Nop>
noremap <left> <Nop>
noremap <right> <Nop>

inoremap <up> <Nop>
inoremap <down> <Nop>
inoremap <left> <Nop>
inoremap <right> <Nop>

vnoremap <up> <Nop>
vnoremap <down> <Nop>
vnoremap <left> <Nop>
vnoremap <right> <Nop>

"" Debugger remaps
nnoremap <leader>s <Plug>VimspectorStop<CR>
nnoremap <leader>r :VimspectorReset<CR>
nnoremap <leader>dd :call vimspector#Launch()<CR>
nnoremap <leader>dc :call GotoWindow(g:vimspector_session_windows.code)<CR>
nnoremap <leader>dt :call GotoWindow(g:vimspector_session_windows.tagpage)<CR>
nnoremap <leader>dv :call GotoWindow(g:vimspector_session_windows.variables)<CR>
nnoremap <leader>dw :call GotoWindow(g:vimspector_session_windows.watches)<CR>
nnoremap <leader>ds :call GotoWindow(g:vimspector_session_windows.stack_trace)<CR>
nnoremap <leader>dl :VimspectorLoadSession ".vimspector.json"<CR>

nnoremap <leader>dtcb :call vimspector#CleanLineBreakpoint()<CR>

nmap <leader>dl <Plug>VimspectorStepInto
nmap <leader>dj <Plug>VimspectorStepOver
nmap <leader>dk <Plug>VimspectorStepOut
nmap <leader>d_ <Plug>VimspectorRestart
nnoremap <leader>d<space> :call vimspector#Continue()<CR>

nmap <leader>drc <Plug>VimspectorRunToCursor
nmap <leader>dbp <Plug>VimspectorToggleBreakpoint
nmap <leader>dcbp <Plug>VimspectorToggleConditionalBreakpoint

"" Telescope remaps
nnoremap <leader>ff :Telescope find_files<cr>
nnoremap <leader>fg :Telescope live_grep<cr>
nnoremap <leader>fb :Telescope buffers<cr>
nnoremap <leader>fh :Telescope help_tags<cr>

"" Harpoon remaps
nnoremap <leader>ha :lua require("harpoon.mark").add_file()<CR>
nnoremap <leader>hm :lua require("harpoon.ui").toggle_quick_menu()<CR>
nnoremap <leader>h1 :lua require("harpoon.ui").nav_file(1)<CR>
nnoremap <leader>h2 :lua require("harpoon.ui").nav_file(2)<CR>
nnoremap <leader>h3 :lua require("harpoon.ui").nav_file(3)<CR>
nnoremap <leader>h4 :lua require("harpoon.ui").nav_file(4)<CR>
nnoremap <leader>hn :lua require("harpoon.ui").nav_next()<CR>
nnoremap <leader>hp :lua require("harpoon.ui").nav_prev()<CR>

"" zk-nvim
nnoremap <leader>zz :ZenMode<CR>
nnoremap <leader>zn :ZkNew { title = vim.fn.input('Title: ') }<CR>
nnoremap <leader>zo :ZkNotes { sort = { 'modified' } }<CR>
nnoremap <leader>zt :ZkTags<CR>
nnoremap <leader>zf :ZkNotes { sort = { 'modified' }, match = { vim.fn.input('Search: ') } }<CR>
nnoremap <leader>zb :ZkBacklinks<CR>
nnoremap <leader>zl :ZkLinks<CR>
vnoremap <leader>zf :'<,'>ZkMatch<CR>

" Custom settings.
set mouse=a
set encoding=utf-8
set backspace=indent,eol,start
"set timeoutlen=50
syntax on
set rnu

" cph config
"let g:cph#lang="python"
nnoremap <leader>tt :Test<CR>
nnoremap <leader>ts :Submit<CR>

" Neoformat
augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END
