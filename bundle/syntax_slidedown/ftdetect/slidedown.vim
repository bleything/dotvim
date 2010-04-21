" Slidedown
autocmd BufRead,BufNewFile *.slidedown,*.sd set filetype=slidedown

" this line included to be compatible with the Markdown syntax
autocmd BufRead,BufNewFile *.slidedown,*.sd set ai formatoptions=tcroqn2 comments=n:>
