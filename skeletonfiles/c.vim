silent normal 0GO// Written by Nikhil Nathanael Ilango
" Inserts the current date and time 
silent r !Get-Date
" Deletes the trailing and preceding lines from the previous command
silent normal dkkkdd
" Makes the date and time more readable
silent normal i// Started on WWWWWiat 
 

" Creates a boilerplate program
silent normal oxx#include <conio.h>
silent normal o#include <stdio.h>
silent normal o#include <stdlib.h>
silent normal oint main () {system("cls");
silent normal ogetch();
silent normal oreturn 0;
silent normal kkO
