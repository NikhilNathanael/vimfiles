vim9script
# Remaps and Abbreviations
	# Map the required hotkeys
		inoremap <buffer> {<cr> {<cr>}<esc>O

# Compile and Execute Shortcuts
	# Compile hotkey is F8
		nnoremap <buffer> <F8> :make build<cr>
	# Execute hotkey is F9
		nnoremap <buffer> <F9> :!mingw32-make run<cr>


# Set Compiler
	compiler c


# Comment String for comment plugin
	setlocal commentstring=//%s
