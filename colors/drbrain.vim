" Vim color file
" Maintainer:	Eric Hodel <drbrain@segment7.net>

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "drbrain"

hi Normal	guifg=White		guibg=Black
hi Normal	ctermfg=Grey		ctermbg=Black

hi Constant	term=bold	gui=bold
hi Constant	guifg=#6feeee
hi Constant	ctermfg=Cyan

hi Comment	guifg=DarkCyan
hi Comment	ctermfg=DarkCyan

hi Conditional	term=bold	gui=bold
hi Conditional	guifg=Yellow
hi Conditional	ctermfg=Yellow

hi Define	term=bold	gui=bold
hi Define	guifg=Yellow

hi Folded	term=bold	gui=bold
hi Folded	guifg=#6feeee		guibg=Black
hi Folded	ctermfg=Cyan		ctermbg=Black

hi Function	term=bold	gui=bold
hi Function	guifg=White
hi Function	ctermfg=White

hi Identifier	guifg=#f6eeee
hi Identifier	ctermfg=Cyan

hi Number	term=bold	gui=bold
hi Number	guifg=#6feeee
hi Number	ctermfg=Cyan

hi PreProc	term=bold	gui=bold
hi PreProc	guifg=Blue
hi PreProc	ctermfg=LightBlue

hi Special	term=bold	gui=bold
hi Special	guifg=Red
hi Special	ctermfg=Red

hi Statement	term=bold	gui=bold
hi Statement	guifg=Yellow
hi Statement	ctermfg=Yellow

hi String	term=bold	gui=bold
hi String	guifg=#6fd010
hi String	ctermfg=LightGreen

hi Type		term=bold	gui=bold
hi Type		guifg=LightGreen
hi Type		ctermfg=LightGreen

" lame, why isn't it linked up with something appropriate by default?
hi link rubyIdentifier Constant

