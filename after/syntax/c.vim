" Modified by me, Nikhil Nathanael Ilango
" User Defined Variables
syn match 	cUDVariable	"\v%(\d\a*)@<!\h\w*" " Words that don't begin with a digit
hi def link cUDVariable 	UDVariable

syn match 	cStructureVariable	"\v(struct)@<=\s*\h\w*" " Words that don't begin with a digit and are preceded by 'struct'
syn match 	cUnionVariable		"\v(union)@<=\s*\h\w*" " Words that don't begin with a digit and are preceded by 'struct'
hi def link cStructureVariable	StructureVariable
hi def link cUnionVariable	StructureVariable

" User defined functions
syn match 	cUDFunction	"\v%(\d\a*)@<!\h\w*(\s*\()@=" " Words that don't begin with a digit and a followed by '('
hi def link cUDFunction		UDFunction

" Binary numbers
syn match	cNumber		display contained "\v0b(0|1)+(u=l{0,2}|ll=u)>"


" Variable name error
"syn match 	cIdentifierError	"\v(\d+\a+\d*)" " Words that begin with a digit
hi def link 	cIdentifierError	cError
