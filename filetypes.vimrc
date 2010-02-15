""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""
""" Ben Bleything's Vim Setup
""" Based on the work of many others. See README.rdoc for credits.
"""
""" Git Hubs: http://github.com/bleything/dotvim
""" Internet Electronic Mail: ben@bleything.net
"""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" use filetype plugins to determine indent settings
filetype plugin indent on

" ruby files are indented by two
autocmd FileType ruby set softtabstop=2 shiftwidth=2

" don't show whitespace in help files
autocmd FileType help set nolist
