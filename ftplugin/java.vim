" Written by Nikhil Nathanael Ilango
" Started on Monday, January 8, 2024 at 9:36:39 PM

" Remaps and Abbreviations
	" Map the required hotkeys
		inoremap <buffer> {<cr> {<cr>}<esc>O

" Compile and Execute Shortcuts
	" Compile hotkey is F8
		nnoremap <buffer> <F8> :w <bar> !javac '%:p'<cr>
	" Execute hotkey is F9
		nnoremap <buffer> <F9> :!java '%:p'<cr>
