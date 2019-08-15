" **************************************************************************** "
"                                                                              "
"                                                                              "
"    .vimrc                                                                    "
"                                                                              "
"    By : sblauens                                                             "
"                                                                              "
"    Created : 2018/01/11                                                      "
"    Updated : 2019/07/28                                                      "
"                                                                              "
" **************************************************************************** "

	"GENERAL
	set nocompatible
	set hidden						" Allow hidden buffers
	set number						" Show line #
	set noshowmode					" Set off classic status line
	"set colorcolumn=81				" Highlight screen column
	set hlsearch					" Highlight search pattern matches

	"INDENTATION
	set copyindent					" Copy structure of existing indent
	"set noautoindent				" Don't copy indent from current line
	"set cindent					" Enable C indenting
	"filetype indent off			" Don't load specific indent file
	filetype indent on				" Load specific indent file
	set nosmartindent				" Don't indent after {} or 'cinwords'
	set tabstop=4					" # of space for a tab
	set softtabstop=4				" # of space for a tab edit
	set shiftwidth=4				" # of space for eac indent
	"set expandtab					" Real spaces for tab
	set listchars=eol:ø,tab:¶·		" List : ¶·······ø
	set listchars+=trail:·			" Show · for trailing spaces
	set nolist
	let c_space_errors = 1

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
	set background=dark
	colorscheme chalk

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
	let g:mediummode_enabled = 0
	let g:mediummode_allowed_motions = 3
	let g:mediummode_disallowed_message = "Don't repeat yourself.."
	let g:mediummode_motion_keys =
		\['h', 'j', 'k', 'l', '-', '+', '<Left>', '<Right>', '<Up>', '<Down>']

	"NERDCOMMENTER
	let NERDSpaceDelims = 1

	"VIM-COOL
	let g:CoolTotalMatches = 1
