" Vim color scheme
"
" Name:         railscasts.vim
" Maintainer:   Nick Moffitt <nick@zork.net>
" Last Change:  01 Mar 2008
" License:      WTFPL <http://sam.zoy.org/wtfpl/>
" Version:      2.0
"
" This theme is based on Josh O'Rourke's Vim clone of the railscast
" textmate theme.  The key thing I have done here is supply 256-color
" terminal equivalents for as many of the colors as possible, and fixed
" up some of the funny behaviors for editing e-mails and such.
"
" To use for gvim:
" 1: install this file as ~/.vim/colors/railscasts.vim
" 2: put "colorscheme railscasts" in your .gvimrc
"
" If you are using Ubuntu, you can get the benefit of this in your
" terminals using ordinary vim by taking the following steps:
"
" 1: sudo apt-get install ncurses-term
" 2: put the following in your .vimrc
"     if $COLORTERM == 'gnome-terminal'
"         set term=gnome-256color
"         colorscheme railscasts
"     else
"         colorscheme default
"     endif
" 3: if you wish to use this with screen, add the following to your .screenrc:
"     attrcolor b ".I"
"     termcapinfo xterm 'Co#256:AB=\E[48;5;%dm:AF=\E[38;5;%dm'
"     defbce "on"
"     term screen-256color-bce

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "railscasts"

hi link htmlTag                     xmlTag
hi link htmlTagName                 xmlTagName
hi link htmlEndTag                  xmlEndTag

if has("gui_running")
  highlight Normal                    guifg=#E6E1DC   guibg=#111111
  highlight Cursor                    guifg=#000000   guibg=#FFFFFF
  highlight CursorLine                guibg=#000000

  highlight Comment                   guifg=#BC9458   gui=italic
  highlight Constant                  guifg=#6D9CBE
  highlight Define                    guifg=#CC7833
  highlight Error                     guifg=#FFFFFF   guibg=#990000
  highlight Function                  guifg=#FFC66D   gui=NONE
  highlight Identifier                guifg=#6D9CBE   gui=NONE
  highlight Include                   guifg=#CC7833   gui=NONE
  highlight PreCondit                 guifg=#CC7833   gui=NONE
  highlight Keyword                   guifg=#CC7833
  highlight LineNr                    guifg=#2B2B2B   guibg=#C0C0FF
  highlight Number                    guifg=#A5C261
  highlight PreProc                   guifg=#E6E1DC
  highlight Search                    guifg=NONE guibg=#2b2b2b gui=italic
  highlight Statement                 guifg=#CC7833   gui=NONE
  highlight String                    guifg=#A5C261
  highlight Title                     guifg=#FFFFFF
  highlight Type                      guifg=#DA4939   gui=NONE
  highlight Visual                    guibg=#5A647E

  highlight DiffAdd                   guifg=#E6E1DC   guibg=#144212
  highlight DiffDelete                guifg=#E6E1DC   guibg=#660000

  highlight pythonBuiltin             guifg=#6D9CBE   gui=NONE
  highlight rubyBlockParameter        guifg=#FFFFFF
  highlight rubyClass                 guifg=#FFFFFF
  highlight rubyConstant              guifg=#DA4939
  highlight rubyInstanceVariable      guifg=#D0D0FF
  highlight rubyInterpolation         guifg=#519F50
  highlight rubyLocalVariableOrMethod guifg=#D0D0FF
  highlight rubyPredefinedConstant    guifg=#DA4939
  highlight rubyPseudoVariable        guifg=#FFC66D
  highlight rubyStringDelimiter       guifg=#A5C261

  highlight xmlTag                    guifg=#E8BF6A
  highlight xmlTagName                guifg=#E8BF6A
  highlight xmlEndTag                 guifg=#E8BF6A
else
  highlight Cursor                    ctermfg=0	   ctermbg=15	
  highlight CursorLine                ctermbg=232	cterm=NONE

  highlight Comment                   ctermfg=180   cterm=NONE
  highlight Constant                  ctermfg=73	
  highlight Define                    ctermfg=173	
  highlight Error                     ctermfg=221	   ctermbg=88
  highlight Function                  ctermfg=221	   cterm=NONE
  highlight Identifier                ctermfg=73	   cterm=NONE
  highlight Include                   ctermfg=173	   cterm=NONE
  highlight PreCondit                 ctermfg=173	   cterm=NONE
  highlight Keyword                   ctermfg=173	
  highlight LineNr                    ctermfg=159
  highlight Number                    ctermfg=107
  highlight PreProc                   ctermfg=103
  highlight Search                    ctermfg=NONE ctermbg=235 cterm=underline
  highlight Statement                 ctermfg=173	   cterm=NONE
  highlight String                    ctermfg=107
  highlight Title                     ctermfg=15	
  highlight Type                      ctermfg=167	   cterm=NONE
  highlight Visual                    ctermbg=60	

  highlight DiffAdd                   ctermfg=7	   ctermbg=235	
  highlight DiffDelete                ctermfg=7	   ctermbg=52	
  highlight Special                   ctermfg=167

  highlight pythonBuiltin             ctermfg=73
  "highlight rubyBlockParameter        ctermfg=15	
  "highlight rubyClass                 ctermfg=15	
  "highlight rubyConstant              ctermfg=167	
  "highlight rubyInstanceVariable      ctermfg=189	
  "highlight rubyInterpolation         ctermfg=107	
  "highlight rubyLocalVariableOrMethod ctermfg=189	
  "highlight rubyPredefinedConstant    ctermfg=167	
  "highlight rubyPseudoVariable        ctermfg=221	
  "highlight rubyStringDelimiter       ctermfg=143	

  highlight xmlTag                    ctermfg=179	
  highlight xmlTagName                ctermfg=179	
  highlight xmlEndTag                 ctermfg=179	

  highlight mailSubject			ctermfg=107
  highlight mailHeaderKey		ctermfg=221
  highlight mailEmail		ctermfg=107 cterm=underline

  highlight SpellBad			ctermfg=160 ctermbg=NONE cterm=underline
  highlight SpellRare			ctermfg=164 ctermbg=NONE cterm=underline
  highlight SpellCap			ctermfg=25 ctermbg=NONE cterm=underline
  highlight MatchParen			ctermfg=226 ctermbg=38
endif
