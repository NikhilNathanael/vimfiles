" Remaps and Abbreviations
	" Map the required hotkeys
		inoremap <buffer> #in<C-n> #include <.h><esc>F<a
		inoremap <buffer> {<cr> {<cr>}<esc>O

	" Snippets
		" " For loop 
		" 	" function! s:ForLoopSnippet () 
		" 	" 	let snippet = "" 

		" 	" 	call inputsave() 
		" 	" 	let iterator = input("Iterator : ", "") 
		" 	" 	if iterator == "" | let iterator = "i" | endif 
		" 	" 	call inputrestore() 

		" 	" 	call inputsave() 
		" 	" 	let iterand = input("Iterand : ", "") 
		" 	" 	if iterand == "" | call inputrestore() | return "for" | endif 
		" 	" 	call inputrestore() 

		" 	" 	" Eats next space or <cr> character 
		" 	" 	let eat = getchar(0) 

		" 	" 	return "for (int ".iterator." = 0; ".iterator." < ".iterand."; ".iterator."++) {}O" 
		" 	" endfunction 

		" 	" inoreabbr <buffer> <expr> for <SID>ForLoopSnippet() 

		" 	" " inoreabb <buffer> for for (int <++> = 0; <++> < n; <++>++) {}O<++>:-1s/ <++>//g<left><left> 
		
		" " Printf 
		" 	inoreabb <buffer> printf printf ("<++>);<esc>F"i 
	
		" " Scanf 
		" 	inoreabb <buffer> scanf scanf (", &<++>);<esc>F"i 

	" Searches
		" " Used to look for for loops
		" 	cnoreabb <buffer> findfor \vfor\s*\(%(int<bar>float<bar>char)?\s*(\h\w*)\s*\=\s*%(\h\w*<bar>%(\+<bar>\-)?\d+)\;\s*\1\s*%(%(\<<bar>\><bar>)\=?<bar>%(\!\=<bar>\=\=))\s*%(\h\w*<bar>%(\+<bar>\-)?\d+)\;\s*\1%(\+\+<bar>\-\-<bar>%(\+<bar>\-)\=\s*%(%(\+<bar>\-)?%(\d+<bar>%(\h\w*))))\)

		" " Used to look for if statements
		" 	cnoreabb <buffer> findif \v(else\s+)?%[\s^]@<=if\s*\(.*\)

	" Two consecutive periods in insert mode moves cursor to next tag
		" inoremap <buffer> .. <esc>/<++><cr>cgn


" Create custom highlighting for user defined variables, structures and functions
	let s:dataTypes = ["int", "long", "double", "float", "struct", "void"]
	let s:listOfStructureVariables = []
	let s:listOfFunctionIdentifiers = []
	function! s:UserDefinedIndentifierHighlighting () 
				
	endfunction


" Compile and Execute Shortcuts
	" Compile hotkey is F8
		nnoremap <buffer> <F8> :w <bar> !mingw32-make.exe<cr>
	" Execute hotkey is F9
		nnoremap <buffer> <F9> :!& '%:p:r.exe'<cr>


" Set Compiler
	compiler c


" Comment String for comment plugin
	setlocal commentstring=//%s
