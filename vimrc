"""
""" Ben Bleything's .vimrc
""" Based on the work of many others. See README.rdoc for credits.
"""
""" Git Hubs: http://github.com/bleything/dotvim
""" Internet Electronic Mail: ben@bleything.net
"""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" G E N E R A L   O P T I O N S
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible " to hell with vi compatibility!
set ruler        " shows cursor position in the lower right
set showcmd      " shows incomplete command to the left of the ruler
set wildmenu     " fancy command completion menu!

""" colors
set background=dark " use colors suitable for dark backgrounds
colorscheme desert  " I like desert, I don't care what you say.

""" window settings
set winminheight=0 " allow windows to be 0 lines tall
set winminwidth=0  " allow windows to be 0 lines wide

" Miscellaneous Options. Values:
"   a: ":read" sets window filename
"   A: ":write" sets window filename
"   B: backslash has no special meaning in ":map"
"   c: search continues from the end of the match
"   e: automatically add <CR> to the end of executed registers
"   F: ":write" sets buffer filename
"   s: set buffer options on entering the buffer
"   W: refuse to overwrite a readonly file, even with :w!
"   Z: don't reset 'readonly' when using :w!
set cpoptions=aABceFsWZ

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" E D I T I N G   O P T I O N S
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on       " turn on syntax highlighting
set number      " show line numbers
set showbreak=+ " display a + at the beginning of a wrapped line
set showmatch   " flash the matching bracket on inserting a )]} etc

""" whitespace settings
"set cindent      " c-style language indentation
"set smartindent  " automatically indent new lines
"set smarttab     " tab ... smartly?  not sure.
set shiftwidth=4 " most of the time, we want a shiftwidth of 4
set tabstop=4    " most of the time, we want a tabstop of 4
set expandtab    " DIE TABS DIE

""" show whitespace
set list
set listchars=tab:»·,trail:· " show tabs and trailing spaces
set listchars+=extends:»     " show a » when a line goes off the right
                             " edge of the screen
set listchars+=precedes:«    " show a « when a line goes off the left
                             " edge of the screen

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" F O L D I N G   O P T I O N S
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldenable       " enable folding
set foldlevelstart=0 " start with all folds collapsed when switching
                     " buffers
set foldcolumn=2     " adds two columns of fold status on the left-hand
                     " side of the screen
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" S E A R C H   O P T I O N S
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase " makes search patterns case-insensitive by default
set smartcase  " overrides ignorecase when the pattern contains 
               " upper-case characters
set hlsearch   " highlights search results
set incsearch  " incremental search. 'nuf said

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" G U I   O P T I O N S
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set mouse=a " use mouse when possible

" GUI option string.  Values:
"   a: visual-mode selections go to the clipboard
"   A: modeless selections go to the clipboard 
"   c: don't pop up windows; use the console for dialog boxes and such
"   e: use GUI tab bar instead of text tab bar
set guioptions=aAce
