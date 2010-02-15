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
""" K E Y   B I N D I N G S
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=',' " set leader to ,

" format paragraphs (72 columns)
map <leader>w {!}par w72qrg<CR>

" one-stroke window maximizing
map <C-H> <C-W>h<C-W><BAR>
map <C-L> <C-W>l<C-W><BAR>
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
