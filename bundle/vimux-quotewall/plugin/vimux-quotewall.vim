:let tmux_available = $TMUX

if tmux_available == ""
  finish
endif

if exists("g:loaded_vimux_quotewall") || &cp
  finish
endif
let g:loaded_vimux_quotewall = 1

command VimuxQuoteWall :call s:RunQuoteWall()

function s:RunQuoteWall()
  call VimuxRunCommand("clear && quotewall \"tmux kill-pane\"")
  :silent !tmux select-pane -lD
endfunction



nnoremap <silent> <LocalLeader>qw :VimuxQuoteWall<CR>

