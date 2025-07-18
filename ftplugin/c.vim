vim9script
# Remaps and Abbreviations
	# Map the required hotkeys
		inoremap <buffer> {<cr> {<cr>}<esc>O
		inoremap <buffer> (<cr> (<cr>)<esc>O
		inoremap <buffer> [<cr> [<cr>]<esc>O

# errorformat
	setlocal makeprg=mingw32-make
	# Sometimes mingw32-make clobbers the filename so it has to be taken into
	# account
	setlocal errorformat=mingw32-make\ :\ %f:%l:%c:\ %trror:\ %m
	setlocal errorformat+=mingw32-make.exe\ :\ %f:%l:%c:\ %trror:\ %m
	# Matches an error line like below, this is a sematic error
	#./src/main.cpp:23:2: error: 'fn' was not declared in this scope
	#  fn a = test_fn;
	setlocal errorformat+=%f:%l:%c:\ %trror:\ %m

# Compile and Execute Shortcuts
	# Check hotkey is F8
		nnoremap <buffer> <F8> :make check<cr>
	# Execute hotkey is F10
		nnoremap <buffer> <F9> :!mingw32-make run -j8<cr>
	# Compile hotkey is F10
		nnoremap <buffer> <F10> :make build -j8<cr>

# Comment String for comment plugin
	setlocal commentstring=//%s
