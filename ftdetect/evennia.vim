au BufRead,BufNewFile *.ev call SetEvennia()

function! SetEvennia()
	set filetype=evennia

	" Make sure RainbowParens is turned off, it freaks out with evennia's {
	" character for escaping
	" https://github.com/junegunn/rainbow_parentheses.vim/
	if exists(":RainbowParentheses")
		RainbowParentheses!
	endif
endfunction

set expandtab
set tabstop=1
set shiftwidth=1
