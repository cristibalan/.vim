" autocmd!

" i want macvim to go fullscreen on startup
function! OnVimEnter()
  if has("macunix") && has("gui_running")
    set antialias
    " set fuoptions=maxvert,maxhorz
    " macvim height calculation bug, forcing lines manually
    set fuoptions=maxhorz
    set fullscreen
    set lines=100
    " set columns=500
  endif
endfunction
autocmd VimEnter    * call OnVimEnter()

" remove all buffers on exit so we don't have them as hidden on reopen
autocmd VimLeavePre * 1,255bwipeout

" remove empty or otherwise dead buffers when moving away from them
function! OnTabLeave()
  if UselessBuffer('%')
    bwipeout
  endif
endfunction
autocmd TabLeave    * call OnTabLeave()

" keep custom global cwd the same across buffers
" see chelu/cwd.vim
autocmd BufEnter    * call CdReset()
