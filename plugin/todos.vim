vim9script
# This plugin opens a todos file in my home directory when vim starts up 

def OpenTodos()
	if (@% == "")
		e ~/todos.txt
	else 
		tabe ~/todos.txt
		tabm 0
	endif
enddef

augroup Todofiles
	autocmd VimEnter * call OpenTodos()
augroup end
