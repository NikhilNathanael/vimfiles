vim9script
# Add windows header file location to path 
setlocal path+=C:\\Program\\\ Files\\mingw-w64\\x86_64-8.1.0-posix-seh-rt_v6-rev0\\mingw64\\x86_64-w64-mingw32\\include\\
setlocal path+=C:\\Program\\\ Files\\mingw-w64\\x86_64-8.1.0-posix-seh-rt_v6-rev0\\mingw64\\lib\\gcc\\x86_64-w64-mingw32\\8.1.0\\include\\
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
	# C:\Users\nikhi\Projects\grug\grug-rs\gruggers\src\grug-tests\tests.c(2589,2): error C2065: 'game_fn_game_fn_vec_number_push_call_count': undeclared identifier [C:\Users\nikhi\Projects\grug\grug-rs\gruggers\src\grug-tests\build\tests.vcxproj]
	setlocal errorformat+=\ %f(%l\\,%c):\ %trror\ C%n:\ %m[%.%#]
	# C:\Users\nikhi\Projects\grug\grug-rs\gruggers\src\grug-tests\tests.h(268,17): warning C4013: 'realloc' undefined; assuming extern returning int [C:\Users\nikhi\Projects\grug\grug-rs\gruggers\src\grug-tests\build\smoketest.vcxproj]
	setlocal errorformat+=\ %f(%l\\,%c):\ %tarning\ C%n:\ %m[%.%#]

# Compile and Execute Shortcuts
	# Check hotkey is F8
		nnoremap <buffer> <F8> :make check -j8<cr>
	# Execute hotkey is F10
		nnoremap <buffer> <F9> :!mingw32-make run -j8<cr>
	# Compile hotkey is F10
		nnoremap <buffer> <F10> :make build -j8<cr>

# Comment String for comment plugin
	setlocal commentstring=//%s
