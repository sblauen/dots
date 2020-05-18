" .vimrc
" ------------------------------------------------------------------------------

"GENERAL
" ------------------------------------------------------------------------------
set nocompatible
set hidden				" Allow hidden buffers
set number				" Show line #
"set colorcolumn=81			" Highlight screen column
set hlsearch				" Highlight search pattern matches
set wildmenu				" Enhance command-line completion
set laststatus=2			" Always show statusline
filetype plugin on			" Enable plugins loading
set history=200				" Commands saved in history

"INDENTATION
" ------------------------------------------------------------------------------
set copyindent				" Copy structure of existing indent
filetype indent on			" Load specific indent file
set listchars=eol:ø,tab:¶·		" List : ¶·······ø
set listchars+=trail:·			" Show · for trailing spaces
set nolist
let c_space_errors = 1

"NETRW
" ------------------------------------------------------------------------------
let g:netrw_liststyle = 3		" Tree style listing
let g:netrw_preview = 1			" Vertical split preview
let g:netrw_use_errorwindow = 0		" Use echoerr for messages
let g:netrw_bufsettings =
	\'noma nomod nu nowrap ro nobl'

"FILES
" ------------------------------------------------------------------------------
set noswapfile				" Don't allow swp files
set nobackup				" Don't allow ~ files
set nowritebackup			" Write buffer to original file
set noundofile				" Don't allow un files

"COLORS
" ------------------------------------------------------------------------------
set t_Co=256
syntax on
set background=dark
colorscheme chalk
