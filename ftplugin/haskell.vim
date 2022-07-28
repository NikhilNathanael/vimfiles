" Written by Nikhil Nathanael Ilango
" Started on Thursday, July 28, 2022 at 11:35:01 AM

" Remaps and Abbreviations
	" Map the required hotkeys

	" Snippets

	" Searches

	" Two consecutive spaces in insert mode moves cursor to next tag
		inoremap <buffer> .. <esc>/<++><cr>ca>

" Settings
    setlocal tabstop=8
    setlocal softtabstop=4

" Compile and Execute Shortcuts
	" Compile hotkey is F8
		" nnoremap <buffer> <F8> :w <bar> !g++ -Wall '%:p' -o '%:p:r'<cr>
	" Execute hotkey is F9
		" nnoremap <buffer> <F9> :!& '%:p:r.exe'<cr>

" Comment String for comment plugin
	setlocal commentstring=--%s
