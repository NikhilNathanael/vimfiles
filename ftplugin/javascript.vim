" Remaps and Abbreviations
	" Map the required hotkeys
		inoremap <buffer> {<cr> {<cr>}<esc>O
		inoremap <buffer> [<cr> [<cr>]<esc>O

" Compile and Execute Shortcuts
	" Compile hotkey is F8
	nnoremap <buffer> <F8> :w <bar> <cr>
	" Execute hotkey is F9
	nnoremap <buffer> <F9> :!node '%:p'<cr>
