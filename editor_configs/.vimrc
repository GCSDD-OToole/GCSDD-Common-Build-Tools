set backupcopy=yes

"Dark Mode"
set background=dark

"Red bar at the 80 character mark"
set colorcolumn=80

"This should turn off the mouse (I think). good for trackpads and zealots"
set mouse-=a

"Enable Syntax Highlighting for various code file types"
syntax on

"Enable line numbers on the left hand side of the editor window"
set number

"Set tab widths -- default 4, override for html and c"
set tabstop=4 shiftwidth=4 expandtab
autocmd FileType html setlocal tabstop=2 shiftwidth=2
autocmd FileType hpp,cpp,h,c setlocal tabstop=3 shiftwidth=3

filetype indent plugin on

"assign clang-format to the = formatter"
autocmd FileType c,cpp,h,hpp setlocal equalprg=clang-format

"Highlight/warn for trailing spaces and excessive newlines"
highlight GitPains ctermbg=red guibg=red
autocmd ColorScheme * highlight GitPains ctermbg=red guibg=red
match GitPains /\s\+$\|\n\{3,}\|\(($\n\s*\)\+\%$)/


"Prevent vim from automatically starting a comment line (personal preference)"
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"Syntastic Config Options"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Disable the F1 key!"
imap <F1> <Esc>
nmap <F1> <Esc>

"Highlight search matches"
set hlsearch

"You can use F-keys to rebuild the source"
autocmd FileType ruby map <F9> :w<CR>:!ruby -c %<CR>

"Not really sure what this is for"
set showcmd

"Set the leader shortcuts this is supposed to make the leader '\' (i think?) "
let mapleader = ''

"Set ev and sv to leader commands for save and edit vimrc"
nnoremap <leader>ev :edit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

"turn spell checking on and off"
nnoremap <leader>ss :setlocal spell! spelllang=en_us<cr>

"I think this jumps between spelling errors?"
nnoremap <leader>sj :lnext<cr>
nnoremap <leader>sk :lprev<cr>

"Code Folding - I think to fold and unfold"
nnoremap <leader>fa zm
nnoremap <leader>af zR

"Python fun! automatically create a new function definition"
"We should use this as a starting point for c++ macros"
nnoremap <leader>rF odef<space>()<return><tab>return<return><esc>kk^wi

"Move between splits using leader instead of Ctrl sequence"
nnoremap <leader>l <c-w>l
nnoremap <leader>h <c-w>h
nnoremap <leader>k <c-w>k
nnoremap <leader>j <c-w>j

"leader n/b to scroll next/back between open buffers
nnoremap <leader>b :bp<cr>
nnoremap <leader>n :bn<cr>

"delete current buffer without closing window
nnoremap <leader>c :bn\|bd #<cr>

"resize splits with control-shift-l and -h"
nnoremap <c-S-l> :vertical resize+8<cr>
nnoremap <c-S-h> :vertical resize-8<cr>

