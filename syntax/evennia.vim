if exists("b:current_syntax")
  finish
endif

" Maybe someday.. Can't get this to work
" syn include @evPython syntax/python.vim
" syn region evPy start=+@py+ keepend end=+\$+ contains=@evPython

" Need to have this so the word bounry regex for evDBRef works
" http://stackoverflow.com/questions/13940823/how-to-highlight-words-beginning-with-in-vim-syntax
setlocal iskeyword+=#-#

" Evennia escapes special characters and colors with | character
" See https://github.com/evennia/evennia/wiki/TextTags for specifics
syn match evInheritBrightness "|![RGYBMCWX]" contains=@NoSpell
syn match evColor "|[[]\?\([0-5]\{3\}\|[rgybmcwxRGYBMCWX]\|=[a-z]\)" contains=@NoSpell

syn match evSpecialChar "|[|hH\/n*_-]" contains=@NoSpell

syn match evFunction "$[a-zA-Z_][a-zA-Z_0-9]*([^\)\(]*)" contains=@NoSpell

" TODO: Maybe show link text as underlined?
syn match evLink "|l[cte]" contains=@NoSpell

syn match evDBRef "\<#[0-9]\+\>"

" Commands
syn match evCommand "^[^ |^#]*\>" contains=@NoSpell
" Whole-line alternate
" syn match evCommand "^@.*" contains=evTextTag,evDBRef

" Comments
syn keyword evTodo contained TODO FIXME XXX NOTE
syn match evComment "^ *#.*$" contains=evTodo

let b:current_syntax = "evennia"

hi def link evSpecialChar Special
hi def link evDBRef Identifier
hi def link evInheritBrightness Constant
hi def link evColor Constant
hi def link evFunction Function
hi def link evLink Identifier
hi def link evCommand Function
hi def link evTodo Todo
hi def link evComment Comment
