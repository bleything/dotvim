""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""
""" Ben Bleything's Vim Setup
""" Based on the work of many others. See README.rdoc for credits.
"""
""" Git Hubs: http://github.com/bleything/dotvim
""" Internet Electronic Mail: ben@bleything.net
"""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" W I N D O W   O P T I O N S
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ruler          " shows cursor position in the lower right
set showcmd        " shows incomplete command to the left of the ruler
set winminheight=0 " allow windows to be 0 lines tall
set winminwidth=0  " allow windows to be 0 lines wide
set laststatus=2   " always show statusline

" set up statusline
set statusline=
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " filename
set statusline+=%h%m%r%w                     " status flags
set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type
set statusline+=%=                           " right align remainder
set statusline+=0x%-8B                       " character value
set statusline+=%-14(%l,%c%V%)               " line, character
set statusline+=%<%P                         " file position

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" C O L O R   O P T I O N S
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark " use colors suitable for dark backgrounds
colorscheme desert  " shut up, I like desert.
