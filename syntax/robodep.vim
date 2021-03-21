" Vim syntax file
" Language: Robopill Dependency Handler
" Maintainer: hyakuburns
" Latest Revision: ur mom

if exists("b:current_syntax")
  finish
endif

syn keyword rbdTodo contained TODO FIXME XXX NOTE
syn region celString start='' end='' contained
syn match rbdRepo "^\vhg|^git" nextgroup=rbdString skipwhite
syn keyword rbdDep depstart
syn match rbdComment "#.*$" contains=celTodo

hi def link rbdTodo       Todo
hi def link rbdComment    Comment
hi def link rbdRepo       Type
hi def link rbdDep        Constant
hi def link rbdString     Character

let b:current_syntax = "robodep"
