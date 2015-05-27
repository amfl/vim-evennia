" Vim syntax file
" Language: Evennia batch files
" Maintainer: amfl
" Latest Revision: 2015.05.17

if exists("b:current_syntax")
  finish
endif

" Need to have this so the word bounry regex for evDBRef works
" http://stackoverflow.com/questions/13940823/how-to-highlight-words-beginning-with-in-vim-syntax
setlocal iskeyword+=#-#

syn case ignore

" Evennia escapes special characters and colors with { character
" Does not support inline functions (yet?)
" See https://github.com/evennia/evennia/wiki/TextTags for specifics
syn match evEscaped "{\@<!{[\[\!]\=\([0-9]\{3\}\|.\)"
syn match evDBRef "\<#[0-9]\+\>"

" Commands
syn match evCommand "^[^ |^#]*\>"
" Whole-line alternate
" syn match evCommand "^@.*" contains=evEscaped,evDBRef

" Comments
syn keyword evTodo contained TODO FIXME XXX NOTE
syn match evComment "^ *#.*$" contains=evTodo

let b:current_syntax = "evennia"

hi def link evDBRef Constant
hi def link evEscaped Special
hi def link evCommand Function
hi def link evVariable Identifier
hi def link evTodo Todo
hi def link evComment Comment
