""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""
""" Ben Bleything's Vim Setup
""" Based on the work of many others. See README.rdoc for credits.
"""
""" Git Hubs: http://github.com/bleything/dotvim
""" Internet Electronic Mail: ben@bleything.net
"""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""
""" To install, make this directory live at ~/.vim and then make the
""" vimrc file live at ~/.vimrc.  You may also want to run:
"""
"""   $ cd ~/.vim && rake install:plugins
"""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

source $HOME/.vim/basic
source $HOME/.vim/plugins
source $HOME/.vim/bindings
source $HOME/.vim/window
source $HOME/.vim/editing
source $HOME/.vim/filetypes

if has("gui_running")
    source $HOME/.vim/gui
endif
