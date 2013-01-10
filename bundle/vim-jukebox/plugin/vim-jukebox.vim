nnoremap <silent> <LocalLeader>sw :badd wtf_song_is_this<cr>:bdelete! wtf_song_is_this<cr>:below new wtf_song_is_this<cr>:set buftype=nofile<cr>:setlocal noswapfile<cr>:set bufhidden=hide<cr>:0,$read !wtf<cr>
nnoremap <LocalLeader>sa :badd play_song<cr>:bdelete! play_song<cr>:below new play_song<cr>:set buftype=nofile<cr>:setlocal noswapfile<cr>:set bufhidden=hide<cr>:0,$read !play

