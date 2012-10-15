set guifont=Tlwg\ Typist\ Medium\ 11

set tabstop=2
set shiftwidth=2
set expandtab
set pastetoggle=<F12>
"Removing trailing whitespaces / ^M
autocmd FileType c,cpp,java,php,js,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))


"Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59
highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
filetype indent on


" Set syntax on
syntax on

" Indent automatically depending on filetype
filetype indent on
set autoindent

" Case insensitive search
set ic

" Higlhight search
set hls

" Change colorscheme from default
colorscheme molokai

"Drupal File associations
au BufNewFile,BufRead *.inc set filetype=php
au BufNewFile,BufRead *.install set filetype=php
au BufNewFile,BufRead *.module set filetype=php

" Set mouse support
set mouse=a

"prevent weird char ^M etc, setting file format
set ff=unix

"tag file
set tags=tags;

"Git plugin
"set laststatus=2
"set statusline=%{GitBranch()}


"UI config
set showmode
if has('cmdline_info')
		set ruler                  	" show the ruler
		set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " a ruler on steroids
		set showcmd                	" show partial commands in status line and
									" selected characters/lines in visual mode
endif
if has('statusline')
    set laststatus=2

		" Broken down into easily includeable segments
		set statusline=%<%f\    " Filename
		set statusline+=%w%h%m%r " Options
		set statusline+=%{fugitive#statusline()} "  Git Hotness
		set statusline+=\ [%{&ff}/%Y]            " filetype
		set statusline+=\ [%{getcwd()}]          " current dir
		"set statusline+=\ [A=\%03.3b/H=\%02.2B] " ASCII / Hexadecimal value of char
		set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
endif

set backspace=indent,eol,start	" backspace for dummys
set linespace=0					" No extra spaces between rows
set nu							" Line numbers on
set showmatch					" show matching brackets/parenthesis
set incsearch					" find as you type search
set hlsearch					" highlight search terms
set winminheight=0				" windows can be 0 line high 
set ignorecase					" case insensitive search
set smartcase					" case sensitive when uc present
set wildmenu					" show list instead of just completing
set wildmode=list:longest,full	" command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]	" backspace and cursor keys wrap to
set scrolljump=5 				" lines to scroll when cursor leaves screen
set scrolloff=3 				" minimum lines to keep above and below cursor
set foldenable  				" auto fold code
set gdefault					" the /g flag on :s substitutions by default
set list
set lbr
set wrap
set number
set showbreak=..
"Wrap line
set listchars=tab:>.,trail:.,extends:#,nbsp:. " Highlight problematic whitespace

