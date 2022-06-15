call plug#begin('C:\Users\Brytton Tsai\AppData\Local\nvim\plugged')

"  Plugins


" File Explorer GUI
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

" LSP Plugins
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'

" Syntax Highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" File traversing
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

"Indenting
Plug 'lukas-reineke/indent-blankline.nvim'

"Terminal in Vim
Plug 'akinsho/toggleterm.nvim'

"Scroll Bar

"Themes
Plug 'tomasiser/vim-code-dark'

"Make Terminal Transparent
Plug 'tribela/vim-transparent'

call plug#end()

" Require Plugin Configurations
lua require("Brytton.toggleterm")

" My Configurations
set number
set tabstop=4
set shiftwidth=4
set softtabstop=0 noexpandtab
set mouse=n
set mouse=a

" Scroll Bar Plugin Configuration

" Custom Theme Adjustments
augroup user_colors
	autocmd!
	" Making things transparent
	autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
	autocmd ColorScheme * highlight EndOfBuffer guibg=NONE ctermbg=NONE
	autocmd ColorScheme * highlight LineNr guibg=NONE ctermbg=NONE
	autocmd ColorScheme * highlight LineNr guibg=NONE ctermbg=NONE ctermfg=grey
	autocmd ColorScheme * highlight Error guibg=NONE ctermbg=NONE
	autocmd ColorScheme * highlight StatusLine guibg=NONE ctermbg=NONE
	autocmd ColorScheme * highlight ModeMsg guibg=NONE ctermbg=NONE
	autocmd ColorScheme * highlight WarningMsg guibg=NONE ctermbg=NONE
	autocmd ColorScheme * highlight NonText guibg=NONE ctermbg=NONE
	autocmd ColorScheme * highlight SpecialKey guibg=NONE ctermbg=NONE
augroup END

set cursorline
set cursorlineopt=number
autocmd ColorScheme * highlight CursorLineNr cterm=bold term=bold gui=bold

colorscheme codedark

