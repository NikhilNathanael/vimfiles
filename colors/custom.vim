" Vim color file
" Maintainer:	Bohdan Vlasyuk <bohdan@vstu.edu.ua>
" Last Change:	2008 Jul 18

" darkblue -- for those who prefer dark background
" [note: looks bit uglier with come terminal palettes,
" but is fine on default linux console palette.]


set bg=dark
hi clear
if exists("syntax_on")
	syntax reset
endif

let colors_name = "custom"

" Lsp highlight definitions
	hi def link LspSemanticType Type
	hi def link LspSemanticClass Class
	hi def link LspSemanticEnum Enum
	hi def link LspSemanticInterface Trait
	hi def link LspSemanticStruct Struct
	hi def link LspSemanticTypeParameter TypeParameter
	hi def link LspSemanticParameter UDVariable
	hi def link LspSemanticVariable UDVariable
	hi def link LspSemanticProperty Identifier
	hi def link LspSemanticEnumMember Constant
	hi def link LspSemanticFunction UDFunction
	hi def link LspSemanticMethod UDFunction
	hi def link LspSemanticKeyword Keyword
	hi def link LspSemanticComment Comment
	hi def link LspSemanticString String
	hi def link LspSemanticNumber Number
	hi def link LspSemanticRegexp Special
	hi def link LspSemanticOperator Operator

	hi def link Class Type
	hi def link Enum Type
	hi def link Trait Type
	hi def link Struct Type
	hi def link TypeParameter Type

	hi link TypeAlias Type
	hi link SelfTypeKeyword Test

	hi link MacroBang Test
	hi link Punctuation Test

	hi link Boolean Constant

	hi link LspSemanticEvents Test
	hi link LspSemanticModifier Test


hi Normal		guifg=#c0c0c0 guibg=Black						ctermfg=gray ctermbg=black
hi ErrorMsg		guifg=#ffffff guibg=#287eff						ctermfg=white ctermbg=lightblue
hi Visual		guifg=#8080ff guibg=fg		gui=reverse				ctermfg=lightblue ctermbg=fg cterm=reverse
hi VisualNOS	guifg=#8080ff guibg=fg		gui=reverse,underline	ctermfg=lightblue ctermbg=fg cterm=reverse,underline
hi Todo			guifg=#d14a14 guibg=#1248d1						ctermfg=red	ctermbg=darkblue
hi Search		guifg=#90fff0 guibg=#2050d0						ctermfg=white ctermbg=darkblue cterm=underline term=underline
hi IncSearch	guifg=#b0ffff guibg=#2050d0							ctermfg=darkblue ctermbg=gray

hi SpecialKey		guifg=cyan			ctermfg=darkcyan
hi Directory		guifg=cyan			ctermfg=cyan
hi Title			guifg=magenta gui=none ctermfg=magenta cterm=bold
hi WarningMsg		guifg=red			ctermfg=red
hi WildMenu			guifg=yellow guibg=black ctermfg=yellow ctermbg=black cterm=none term=none
hi ModeMsg			guifg=#22cce2		ctermfg=lightblue
hi MoreMsg			ctermfg=darkgreen	ctermfg=darkgreen
hi Question			guifg=green gui=none ctermfg=green cterm=none
hi NonText			guifg=#0030ff		ctermfg=darkblue

hi StatusLine	guifg=blue guibg=darkgray gui=none		ctermfg=blue ctermbg=gray term=none cterm=none
hi StatusLineNC	guifg=black guibg=darkgray gui=none		ctermfg=black ctermbg=gray term=none cterm=none
hi VertSplit	guifg=black guibg=darkgray gui=none		ctermfg=black ctermbg=gray term=none cterm=none

hi Folded	guifg=#808080 guibg=Black			ctermfg=darkgrey ctermbg=black cterm=bold term=bold
hi FoldColumn	guifg=#808080 guibg=Black			ctermfg=darkgrey ctermbg=black cterm=bold term=bold
hi LineNr	guifg=#90f020			ctermfg=green cterm=none

hi DiffAdd	guibg=darkblue	ctermbg=darkblue term=none cterm=none
hi DiffChange	guibg=darkmagenta ctermbg=magenta cterm=none
hi DiffDelete	ctermfg=blue ctermbg=cyan gui=bold guifg=Blue guibg=DarkCyan
hi DiffText	cterm=bold ctermbg=red gui=bold guibg=Red

hi Cursor	guifg=black guibg=yellow ctermfg=black ctermbg=black
hi lCursor	guifg=black guibg=white ctermfg=black ctermbg=white

hi Test		ctermfg=blue ctermbg=red
hi Test2	ctermfg=red ctermbg=blue

hi Comment	guifg=#80a0ff ctermfg=darkred
hi Constant	ctermfg=green guifg=#ffa0a0 cterm=none
hi Special	ctermfg=red guifg=Orange cterm=none gui=none
hi UDFunction	ctermfg=yellow guifg=#40ffff cterm=none
hi UDVariable	ctermfg=cyan guifg=#40ffff cterm=none
hi Identifier	ctermfg=green guifg=#40ffff cterm=none
hi String	ctermfg=brown guifg=#40ffff cterm=none
hi Character	ctermfg=brown guifg=#40ffff cterm=none
hi Statement	ctermfg=magenta cterm=none guifg=#ffff60 gui=none
hi StructureVariable	ctermfg=darkgreen cterm=none guifg=#ffff60 gui=none
hi PreProc	ctermfg=magenta guifg=#ff80ff gui=none cterm=none
hi Type		ctermfg=lightblue guifg=#60ff60 gui=none cterm=none
hi Underlined	cterm=underline term=underline
hi Ignore	guifg=bg ctermfg=bg

hi Keyword	ctermfg=magenta guifg=#40ffff
hi Operator	ctermfg=magenta guifg=#40ffff
hi Macro	ctermfg=darkblue guifg=#40ffff

" suggested by tigmoid, 2008 Jul 18
" Popup Menu
hi Pmenu guifg=#c0c0c0 guibg=#404080 ctermfg=black ctermbg=yellow
hi PmenuSel guifg=#c0c0c0 guibg=#2050d0
hi PmenuSbar guifg=blue guibg=darkgray
hi PmenuThumb guifg=#c0c0c0

" vim: sw=8:ts=8:
