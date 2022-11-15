"vim basic setup"
:set nu
:set tabstop=4
:set shiftwidth=4
:set mouse=a

"below terminal setup"
:set splitbelow
:set termwinsize=10x0

"auto complete () {} <>"
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>

:inoremap { {}<ESC>i
:inoremap } <c-r>=ClosePair('}')<CR>

:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>

:inoremap < <><ESC>i
:inoremap > <c-r>=ClosePair('>')<CR>

:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
function! ClosePair(char)
			    return a:char
endfunction

"vimPlugin"
call plug#begin()
Plug 'preservevim/NERDTree'
Plug 'sainnhe/everforest'
call plug#end()

"setup Supertab"
let g:SuperTabRetainCompletionType=2
let g:SuperTabCrMapping=1
let g:SuperTabDefaultCompletionType = "<c-n>"

"auto load while enter"
au VimEnter * NERDTree

"vim theme setup"
syntax on
colorscheme everforest
set background=dark
let g:everforest_better_performance = 1
let g:everforest_background = 'soft'
