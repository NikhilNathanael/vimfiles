" Remaps and Abbreviations
	" Map the required hotkeys


" Compile and Execute Shortcuts
	" Compile hotkey is F8
	nnoremap <buffer> <F8> :w <bar> !pdflatex -output-directory='%:p:h' '%:p'<cr>
	" Execute hotkey is F9
	nnoremap <buffer> <F9> :silent !& '%:p:r.pdf'<cr>
