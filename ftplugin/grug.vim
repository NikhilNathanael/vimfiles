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
	# Check hotkey is F8
		nnoremap <buffer> <F8> :make %<cr>
	# Cannot execute or compile from the command line

# Comment String for comment plugin
	setlocal commentstring=#%s
