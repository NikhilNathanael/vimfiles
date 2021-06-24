" kerboscript.vim: Syntax highlighting for kerboscript
" Copyright (C) 2015  Tom van der Lee
" 
" This program is free software; you can redistribute it and/or modify
" it under the terms of the GNU General Public License as published by
" the Free Software Foundation; either version 2 of the License, or
" (at your option) any later version.
" 
" This program is distributed in the hope that it will be useful,
" but WITHOUT ANY WARRANTY; without even the implied warranty of
" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
" GNU General Public License for more details.
" 
" You should have received a copy of the GNU General Public License along
" with this program; if not, write to the Free Software Foundation, Inc.,
" 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
"
" Vim syntax file
" Language:	kerboscript
" Maintainer:	Tom van der Lee <t0m.vd.l33@gmail.com>

if exists("b:current_syntax")
	finish
endif

syn case ignore

" Booleans "{{{1
syn keyword	ksBoolean	true false
hi def link	ksBoolean	Boolean

" Conditionals "{{{1
syn keyword	ksConditional	if else when then on off and or not
hi def link	ksConditional	Conditional

" Constants "{{{1
syn keyword	ksConstant	pi e g
syn match	ksUDVariable	"\v%(\d\a*)@<!\h\w*"
hi def link	ksConstant	Constant
hi def link	ksUDVariable	UDVariable

" Numeric literals "{{{1
" Regex design borrowed from python.vim. Order matters.
syn match	ksNumber	"\v<\d+>"
syn match	ksFloat		"\v<\d+e[-+]?\d+>"
syn match	ksFloat		"\v<\d+\.%(e[-+]?\d+)?%(\W|$)@="
syn match	ksFloat		"\v%(^|\W)@<=\d*\.\d+%(e[-+]?\d+)?>"
hi def link	ksNumber	Number
hi def link	ksFloat		Float

" Functions "{{{1
syn keyword	ksFunction	add remove stage clearscreen log copy rename delete edit run compile reboot shutdown batch deploy print
syn match	ksUDFunction	"\v%(%(\d\a*)|for.+|until.+|if.+)@<!\h\w*\s*(\(|\{|\@)@="
syn match	ksUDFunction	"\v%(%(local|global)\s+)@<=%(\d\a*)@<!\h\w*\ze\s*%(is|to)\s*\{"
hi def link	ksFunction	Function
hi def link	ksUDFunction	UDFunction

" Keywords "{{{1
syn keyword	ksKeyword	add all at break choose clearscreen compile copy declare defined
syn keyword	ksKeyword	delete do edit else file for from function global if in is list
syn keyword	ksKeyword	local lock log off on once parameter preserve print reboot remove
syn keyword	ksKeyword	rename return run runoncepath runpath set shutdown stage step
syn keyword	ksKeyword	switch then to toggle unlock unset until volume wait when
hi def link	ksKeyword	Keyword

" Operators "{{{1
syn keyword	ksOperator	abs ceiling floor ln log10 mod min max round sqrt sin cos tan arcsin arccos arctan arctan2
syn match	ksOperator	'\*'
syn match	ksOperator	'\^'
syn match	ksOperator	'/'
syn match	ksOperator	'-'
syn match	ksOperator	'+'
syn match	ksOperator	'<='
syn match	ksOperator	'>='
syn match	ksOperator	'<>'
syn match	ksOperator	'=='
syn match	ksOperator	'='
syn match	ksOperator	'<'
syn match	ksOperator	'>'
hi def link	ksOperator	Operator

" Comments "{{{1
syn match	ksComment	"//.*$" contains=ksTodo
hi def link	ksComment	Comment

" Regions "{{{1
syn region	ksParens	start='(' end=')' fold transparent
syn region	ksCodeBlock	start='{' end='}' fold transparent
syn region	ksArraryIndex	start='\[' end='\]' fold transparent


" Repeats "{{{1
syn keyword	ksRepeat	for until in
hi def link	ksRepeat	Repeat

" Statements "{{{1
syn keyword	ksStatement	wait break preserve
hi def link	ksStatement	Statement

" StorageClasses "{{{1
syn keyword	ksStorageClass	global local
hi def link	ksStorageClass	StorageClass

" Strings "{{{1
syn region	ksString	start=+"+ end=+"+
hi def link	ksString	String

" TODOs "{{{1
syn keyword	ksTodo		contained TODO
hi def link	ksTodo		Todo

" Types "{{{1
syn keyword	ksType		v r latlng parameter
syn keyword	ksType		function nextgroup=ksfunction skipwhite
hi def link	ksType		Type
" }}}

let b:current_syntax = "kerboscript"
" vim: set ts=8 sw=8 tw=78 fdm=marker noet :
