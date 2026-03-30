vim9script
# Written by Nikhil Nathanael Ilango
# Started on Monday, March 30, 2026 at 11:47:20 PM

# Indentation settings
setlocal expandtab
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4

# Remaps and Abbreviations
	# Map the required hotkeys
		inoremap <buffer> {<cr> {<cr>}<esc>O
		inoremap <buffer> (<cr> (<cr>)<esc>O
		inoremap <buffer> [<cr> [<cr>]<esc>O

# errorformat
	setlocal makeprg=grugc

# Compile and Execute Shortcuts
	# F8 checks file and puts the output in quickfix list
		nnoremap <buffer> <F8> :make %<cr>
	# F9 checks file and puts the output in stdout
		nnoremap <buffer> <F9> :grugc %<cr>
	# Cannot execute or compile from the command line

# Comment String for comment plugin
	setlocal commentstring=#%s
