" common typos
command! W :up
command! WW :browse confirm saveas
command! Wq :wq
command! Q :q

" Use :C blah.txt in a netrw browser to create a new file
command! -nargs=1 -complete=file C :call CreateNewFile(<f-args>)
