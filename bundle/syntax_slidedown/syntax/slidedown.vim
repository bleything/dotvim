" Vim syntax file
" Language: Slidedown
" Maintainer: Ben Bleything
" Latest Revision: 20 April 2010

if exists("b:current_syntax")
  finish
endif

" load the markdown syntax
runtime! syntax/markdown.vim
unlet b:current_syntax

syn match slideMarker '^!SLIDE.*$'
syn match highlightMarker '^@@@.*$'

let b:current_syntax = "slidedown"

hi link slideMarker Special
hi link highlightMarker Statement
