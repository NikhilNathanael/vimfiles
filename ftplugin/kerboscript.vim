" Make Sure to rename the functions with the appropriate names
" Remaps and Abbreviations
	" Map the required chortcuts
		inoremap <buffer> { {}<esc>O
		inoremap <buffer> ( ().<esc>O
		inoremap <buffer> [ [].<esc>O
		inoreabb <buffer> func function
		inoreabb <buffer> para parameter
		inoreabb <buffer> obt orbit
		inoreabb <buffer> peri periapsis
		inoreabb <buffer> apo apoapsis
	
	" Replaces functions with function variables
		cnoreabb <buffer> repFuncWithVar <esc>viB:g/function/norm wciwlocal<esc>$iis <esc>$%a.<esc>:noh<cr>


" Takes local functions and puts them in a global lexicon that exposes them as delegates
	function! KSExtractFunctions ()
		normal dib
		let lineNo=line(".")
		echo l:lineNo
		execute "normal viB:global/^\\s*function/normal wwyiw:".l:lineNo."O\"0\", 0@,"
		normal >ib$x
		execute "normal vib:global/^/m".(l:lineNo-1).""
	endfunction


" Compile and Execute Shortcuts
	" Compile hotkey is F8
	nnoremap <buffer> <F8> :w <bar> <cr>
	" Execute hotkey is F9
	nnoremap <buffer> <F9> :!& 

" Comment String for comment plugin
	setlocal commentstring=//%s
