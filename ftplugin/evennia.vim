set expandtab shiftwidth=1 softtabstop=1 tabstop=1

" Make sure RainbowParens is turned off, it freaks out with evennia's {
" character for escaping
" https://github.com/junegunn/rainbow_parentheses.vim/
if exists(":RainbowParentheses")
	RainbowParentheses!
endif

