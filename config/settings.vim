""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""" Base settings you don't need to care about and shouldn't change
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" save temporary backups only when saving, but not in the same directory
set nobackup
set writebackup
set directory=$HOME/tmp/vim,$HOME/tmp,/var/tmp,/tmp,$TMP,$TEMP

" use VI incompatible features (most plugins don't run without it)
set nocompatible

" no menus! if this doesn't work, put it in after/menu.vim. or try to run $VIMRUNTIME/delmenu.vim often
let did_install_default_menus=1 " pretend that menus are already loaded
let did_install_syntax_menu=1   " pretend that the syntax menu was already loaded
" remove all menus
aunmenu *
set langmenu=none               " always use english menus at least


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""" Basic settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ffs=unix,dos,mac          " prefer unix line endings

"""""""""" general
set cpoptions+=I              " keep autoindent - doesn't seem to work tho
set autoread                  " read outside modified files
set encoding=UTF-8
set history=10000             " number of history items
set undolevels=10000
set viminfo=%,h,'1000,"1000,:1000,n~/.viminfo
set writeany                  " write on readonly files
set modelines=0               " disable modelines

"""""""""" searches
set gdefault                  " global search/replace by default
set ignorecase                " ignore case when searching
set smartcase                 " ignore case when searching smarter
set hlsearch                  " highlight last search
set incsearch                 " show matches while searching

"""""""""" behave 'mswin/xterm'-ish
set selectmode=mouse ",key      " when to enter SELECT mode
set mousemodel=popup
set keymodel=startsel ",stopsel " what to do when moving with SHIFT
set selection=exclusive         " exclusive is windows style

set mousehide
set mouse=a
set winaltkeys=no

"""""""""" input behavior
set formatoptions=tcroqn1       " text autoformatting options
set nostartofline               " don't move to start of line after commands
set backspace=eol,start,indent  " backspace over everything
set whichwrap=<,>,h,l,b,s,~,[,]
set iskeyword=@,48-57,128-167,224-235,_  "default: @,48-57,_,192-255
set listchars=tab:»·,trail:·,extends:>,precedes:<
set list

"""""""""" visual
set guioptions=AceiMg         " NEVER EVER put ''a in here
set nonumber                  " show line numbers
set laststatus=2              " always show status line
set scrolloff=2               " minlines to show around cursor
set sidescrolloff=2           " minchars to show around cursor
set shortmess=asTIA           " supress some file messages
set linebreak                 " when wrapping, try to break at characters in breakat
set breakat=\ ^I!@*-+;:,./?   " when wrapping, break at these characters
set showbreak=\ \ \ \ \ \ \ \ " what to show at the start of a wrapped line
set showcmd                   " show number of selected chars/lines in status
set showmatch                 " briefly jump to matching brace
set matchtime=1               " show matching brace time (1/10 seconds)
set showmode                  " show mode in status when not in normal mode
set virtualedit=block         " allow moving past end of line in block selection mode
set wildmenu                  " nice menu when completing commands
set wildmode=list:longest,full
" set cursorline                " highlight cursor line
" set cursorcolumn              " highlight cursor column

set noerrorbells
set visualbell                " must turn visual bell on to remove audio bell
set t_vb=                     " turn bells off, must also set this in .gvimrc

"""""""""" statusline, windows, tab pages, buffers
" set statusline=%-2(%M\ %)%5l,%-5v%<%f\ %m\ \ %{hostname()}:%r%{CwdShort()}%=%(%-5([%R%H%W]\ %)\ %10([%Y]%{ShowFileFormatFlag(&fileformat)}\ %)\ %L\ lines%)
set statusline=%<%f%=\ [%1*%M%*%n%R%H]\ %-19(%3l,%02c%03V%)%O'%02b'
set showtabline=0

" TODO
" see help for these functions
"set tabline=%!MyTabLine()
" guitablabel is ignored :/
" set guitablabel=%M%t
"set guitablabel=%N\ %f
"set guitablabel=%{GuiTabLabel()}

set switchbuf=usetab
set tabpagemax=100
set noequalalways
set guiheadroom=0
set hidden
set splitbelow                " split windows below current one
set title

syntax enable
filetype plugin indent on
" filetype plugin on


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""" User options you might actually care about
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set guifont=Monaco:h13
set guifont=Menlo:h11
set linespace=0                 " spacing between lines if font is too crowded

" colorscheme desert
colorscheme mayansmoke
" colorscheme macvim

" TODO ?
"""""""""" tabs and spaces
set expandtab
set autoindent nocindent nosmartindent
set indentexpr=
set tabstop=2
set shiftwidth=2
set softtabstop=2
