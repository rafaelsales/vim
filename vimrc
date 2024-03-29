set nocompatible
syntax on

filetype off
call pathogen#incubate()
filetype plugin indent on

compiler ruby

set hlsearch
set number
set showmatch
set incsearch
set background=dark
set hidden
set backspace=indent,eol,start
set textwidth=0 nosmartindent tabstop=2 shiftwidth=2 softtabstop=2 expandtab
set ruler
set wrap
set dir=/tmp//
set scrolloff=5

set foldmethod=manual
set foldlevelstart=20

set ignorecase
set smartcase
let g:jsx_ext_required = 0

" Mouse handling (even when tmux mouse scroll is active)
set mouse=a
set ttymouse=xterm

" let g:AckAllFiles = 0
" let g:AckCmd = 'ack --type-add ruby=.feature --ignore-dir=tmp 2> /dev/null'
let g:agprg="ag --column --ignore '*.log' --ignore '*.json' --ignore '*.tfstate*' --ignore tmp --ignore tags --ignore node_modules --ignore bower_components --ignore dist --ignore doc"

let html_use_css=1
let html_number_lines=0
let html_no_pre=1

let vimclojure#WantNailgun = 0
let vimclojure#HighlightBuiltins = 1
let vimclojure#ParenRainbow = 1

let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1

let g:rubycomplete_buffer_loading = 1

let g:fuzzy_ignore = "*.log,tmp/*,db/sphinx/*,data,**/node_modules"
let g:fuzzy_ceiling = 50000
let g:fuzzy_matching_limit = 10

let g:no_html_toolbar = 'yes'

let coffee_no_trailing_space_error = 1

" Vimux overrides
" let g:VimuxOrientation = "v"
" let g:VimuxHeight = "40"
let g:VimuxOrientation = "h"
let g:VimuxHeight = "45"

" vim-vroom - Run tests
let g:vroom_use_vimux = 1

autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4

autocmd FileType tex setlocal textwidth=78
autocmd BufNewFile,BufRead *.txt setlocal textwidth=78

" toggle relative number
function! ToggleRelativeNumber()
  if &relativenumber
    set number
  else
    set relativenumber
  endif
endfunction


autocmd FileType ruby runtime ruby_mappings.vim
imap <C-L> <SPACE>=><SPACE>
map <silent> <LocalLeader>cj :!clj %<CR>
map <silent> <LocalLeader>rt :!/usr/bin/ctags -R --exclude=.git --exclude=.svn --exclude=log --exclude=tmp --exclude=db  --exclude=pkg --exclude=diser_submits_inquiry_via_property_teaser_spec.rbtmp --exclude=node_modules --exclude=bower_components --exclude=vendor --exclude=app/assets --extra=+f<CR>
map <silent> <LocalLeader>nt :NERDTreeToggle<CR>
map <silent> <LocalLeader>nr :NERDTree<CR>
map <silent> <LocalLeader>nf :NERDTreeFind<CR>
map <silent> <LocalLeader>ff :CtrlP<CR>
map <silent> <LocalLeader>ft :CtrlPTag<CR>
map <silent> <LocalLeader>fb :CtrlPBuffer<CR>
map <silent> <LocalLeader>fr :CtrlPClearAllCache<CR>
map <silent> <LocalLeader>gd :e product_diff.diff<CR>:%!git diff<CR>:setlocal buftype=nowrite<CR>
map <silent> <LocalLeader>pd :e product_diff.diff<CR>:%!svn diff<CR>:setlocal buftype=nowrite<CR>
map <silent> <LocalLeader>nh :nohls<CR>
map <silent> <LocalLeader>yr :YRShow<CR>
map <LocalLeader>aw :Ag '<C-R><C-W>'
map <silent> <LocalLeader>bd :bufdo :bd<CR>
map <silent> <LocalLeader>cc :TComment<CR>
map <silent> <LocalLeader>uc :TComment<CR>
nnoremap <silent> <LocalLeader>rr :call ToggleRelativeNumber()<cr>
nnoremap <silent> <LocalLeader>ee :tabe $MYVIMRC<CR>
nnoremap <silent> <LocalLeader>ss :source $MYVIMRC<CR>
nnoremap <silent> <LocalLeader><CR> :tabe<CR>
nnoremap <silent> <LocalLeader>[ :tabp<CR>
nnoremap <silent> <LocalLeader>] :tabn<CR>
nnoremap <silent> <LocalLeader><Space> :noh<CR>
nnoremap <silent> <LocalLeader>ww :%s/\s\+$//<CR>:let @/=''<CR><C-o>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
inoremap <F1> <ESC>
inoremap jj <ESC>
" Make alt + right-arrow work on iTerm2 + Vim (https://superuser.com/questions/635482/why-does-optionleft-arrow-work-in-vim-but-not-right-arrow-on-mac-os-x)
imap <ESC>f <C-o>e

" vimux commands
map <Leader>vq :VimuxCloseRunner<CR>
map <Leader>rl :wa<CR> :VimuxRunLastCommand<CR>

cnoremap <Tab> <C-L><C-D>

if version >= 700
    autocmd BufNewFile,BufRead *.txt setlocal spell spelllang=en_us
    autocmd FileType tex setlocal spell spelllang=en_us
endif

let g:solarized_termcolors=256
let g:solarized_contrast="high"
colorscheme solarized

" Highlight trailing whitespace
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd BufRead,InsertLeave * match ExtraWhitespace /\s\+$/
" Set up highlight group & retain through colorscheme changes
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
map <silent> <LocalLeader>ws :highlight clear ExtraWhitespace<CR>

" Highlight too-long lines
autocmd BufRead,InsertEnter,InsertLeave * 2match LineLengthError /\%126v.*/
highlight LineLengthError ctermbg=black guibg=black
autocmd ColorScheme * highlight LineLengthError ctermbg=black guibg=black

" Comment colors
highlight Comment ctermfg=DarkMagenta

set laststatus=2
set statusline=
set statusline+=%<\                       " cut at start
set statusline+=%2*[%n%H%M%R%W]%*\        " buffer number, and flags
set statusline+=%-40f\                    " relative path
set statusline+=%=                        " seperate between right- and left-aligned
set statusline+=%1*%y%*%*\                " file type
set statusline+=%10(L(%l/%L)%)\           " line
set statusline+=%2(C(%v/125)%)\           " column
set statusline+=%P                        " percentage of file

" http://techspeak.plainlystated.com/2009/08/vim-tohtml-customization.html
function! DivHtml(line1, line2)
  exec a:line1.','.a:line2.'TOhtml'
  %g/<style/normal $dgg
  %s/<\/style>\n<\/head>\n//
  %s/body {/.vim_block {/
  %s/<bods\(.*\)>\n/<div class="vim_block"\1>/
  %s/<\/body>\n<\/html>/<\/div>
  "%s/\n/<br \/>\r/g

  set nonu
endfunction
command! -range=% DivHtml :call DivHtml(<line1>,<line2>)
set undodir=~/.vim/undo
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload
set ttyfast
set lazyredraw

" ctrlp settings
nnoremap <silent> <LocalLeader>pp :CtrlP<CR>
let g:ctrlp_map = ''
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\.git$\|\.hg$\|\.svn$\|/dist$\|/tmp$\|/node_modules$\|/bower_components$\|/vendor$\|/doc/api$\|cassettes\|/public$',
    \ 'file': '\.pyc$\|\.pyo$\|\.rbc$|\.rbo$\|\.class$\|\.o$\|\.tfstate\|\~$',
    \ }
let g:ctrlp_max_files = 0
let g:ctrlp_switch_buffer = 1
let g:ctrlp_max_height = 20
let g:ctrlp_clear_cache_on_exit = 0

" nerdtree
let NERDTreeShowHidden = 1

" Because of macOS Sierra, :w !pbcopy stopped working in VIM 8.0
" https://github.com/tmux/tmux/issues/543
" set clipboard=unnamedplus

ca Ag Ag!

" Auto-compile .coffeescript after save:
" autocmd BufWritePost *.coffee silent CoffeeCompile -b | cwindow

runtime macros/matchit.vim
autocmd filetype crontab setlocal nobackup nowritebackup
