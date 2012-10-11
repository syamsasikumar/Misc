set guifont=Tlwg\ Typist\ Medium\ 11

set tabstop=2
set shiftwidth=2
set expandtab
" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
 
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

"Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59
highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
filetype indent on

" Turn on line numbering. Turn it off with "set nonu" 
set nu 

" Set syntax on
syntax on

" Indent automatically depending on filetype
filetype indent on
set autoindent

" Case insensitive search
set ic

" Higlhight search
set hls

" Wrap text instead of being on one line
set lbr

" Change colorscheme from default
colorscheme molokai


nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv

set number
set showbreak=...
set wrap

au BufNewFile,BufRead *.inc set filetype=php
au BufNewFile,BufRead *.install set filetype=php
au BufNewFile,BufRead *.module set filetype=php

" Set mouse support
set mouse=a

"prevent weird char ^M etc, setting file format
set ff=unix


 " Removes the ^M character from the end of every line
function! RemoveM()
     :%s/^M$//g
endfunction
 
 " Replaces the ^M character with a carraige return native to the system
function! ReplaceM()
     :%s/^M/\r/g
endfunction
 
 " Removes superfluous white space from the end of a line
function! RemoveWhiteSpace()
    :%s/\s*$//g
    :'^
    "`.
endfunction

"tag file
set tags=tags

"Git plugin
set laststatus=2
set statusline=%{GitBranch()}
