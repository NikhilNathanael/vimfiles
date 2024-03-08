" C:\Users\nikhi\Vim Projects\Class Files\averagetestscores.c: In function 'main':
" C:\Users\nikhi\Vim Projects\Class Files\averagetestscores.c:25:43: error: expected ')' before ';' token
"   float avg = (score1 + score2 + score3 / 3;
"               ~                            ^
"                                            )
" C:\Users\nikhi\Vim Projects\Class Files\averagetestscores.c:32:1: error: expected ',' or ';' before '}' token
"  }
"  ^
" C:\Users\nikhi\Vim Projects\Class Files\averagetestscores.c:32:1: error: expected declaration or statement at end of input

" let current_compiler = 'c'
CompilerSet makeprg=mingw32-make.exe
" CompilerSet errorformat=%f:%l:%c:\ error:\ %m
" set errorformat^=%*[^:]:\ %f:%l:%*[^:]:%m " match libc assert
