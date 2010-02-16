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

source $HOME/.vim/basic.vimrc
source $HOME/.vim/plugins.vimrc
source $HOME/.vim/bindings.vimrc
source $HOME/.vim/window.vimrc
source $HOME/.vim/editing.vimrc
source $HOME/.vim/filetypes.vimrc

if has("gui_running")
    source $HOME/.vim/gui.vimrc
endif
