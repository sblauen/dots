" **************************************************************************** "
"                                                                              "
"                                                                              "
"    .vimrc                                                                    "
"                                                                              "
"    By : sblauens                                                             "
"                                                                              "
"    Created : 2018/01/11                                                      "
"    Updated : 2018/04/10                                                      "
"                                                                              "
" **************************************************************************** "

	"GENERAL
	set nocompatible
	set hidden						" Allow hidden buffers
	set number						" Show line #
	set noshowmode					" Set off classic status line

	"INDENTATION
	set copyindent					" Copy structure of existing indent
	set noautoindent				" Don't copy indent from current line
	set cindent						" Enable C indenting
	filetype indent off				" Don't load specific indent file
	set nosmartindent				" Don't indent after {} or 'cinwords'
	set tabstop=4					" # of space for a tab
	set softtabstop=4				" # of space for a tab edit
	set shiftwidth=4				" # of space for eac indent
	"set expandtab					" Real spaces for tab
	set listchars=eol:ø,tab:¶·		" List : ¶·······ø
	set list!
	"let c_space_errors = 1

	"NETRW
	let g:netrw_liststyle = 3		" Tree style listing
	let g:netrw_preview = 1			" Vertical split preview
	let g:netrw_use_errorwindow = 0	" Use echoerr for messages
	let g:netrw_bufsettings = 'noma nomod nu nowrap ro nobl'

	"FILES
	set noswapfile					" Don't allow swp files
	set nobackup					" Don't allow ~ files
	set nowritebackup				" Write buffer to original file
	set noundofile					" Don't allow un files

	"COLORS
	set t_Co=256
	syntax on
	"set background=dark
	"let g:solarized_visibility='low'
	"let g:solarized_termcolors=256
	"let g:solarized_termtrans=1
	"colorscheme solarized
	colorscheme smyck

	"PLUGINS
	runtime bundle/vim-pathogen/autoload/pathogen.vim
	filetype plugin on
	execute pathogen#infect()

	"LIGHTLINE
	set laststatus=2				" Show lightline
	"lightline display configuration :
	let g:lightline =
		\{
		\	'colorscheme': 'wombat',
		\	'active': 
		\	{
		\		'left': [ [ 'mode', 'paste'],
		\				  [ 'gitinfo', 'readonly', 'filename', 'modified' ] ]
		\	},
		\	'component_function': 
		\	{
		\		'gitinfo': 'fugitive#statusline'
		\	},
		\}

	"HARDMODE
	"autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

	"MEDIUMMODE
	let g:mediummode_allowed_motions = 1
	let g:mediummode_disallowed_message = "Don't repeat yourself.."
	let g:mediummode_motion_keys =
		\['h', 'j', 'k', 'l', '-', '+', '<Left>', '<Right>', '<Up>', '<Down>']
