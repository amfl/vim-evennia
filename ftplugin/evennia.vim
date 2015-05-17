if exists("b:did_ftplugin") | finish | endif
let b:did_ftplugin = 1

setlocal cinkeys-=0#
setlocal indentkeys-=0#
setlocal suffixesadd=.ev
setlocal comments-=:%
setlocal commentstring=#%s

setlocal expandtab shiftwidth=1 softtabstop=1 tabstop=1

" Make sure RainbowParens is turned off, it freaks out with evennia's {
" character for escaping
" https://github.com/junegunn/rainbow_parentheses.vim/
if exists(":RainbowParentheses")
	RainbowParentheses!
endif

