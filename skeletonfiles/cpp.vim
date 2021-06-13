" Program header
	silent normal 0GO// Written by Nikhil Nathanael Ilango
	" Inserts the current date and time 
	silent r !Get-Date
	" Deletes the trailing and preceding lines from the previous command
	silent normal dkkkdd
	" Makes the date and time more readable
	silent normal i// Started on WWWWWiat 


" Creates a boilerplate program
	" #include Statements
		silent normal oxx#include <conio.h>
		silent normal o#include <stdio.h>
		silent normal o#include <stdlib.h>
	" Main Statement
		silent normal oint main () {
		silent normal Osystem("cls");
		silent normal jogetch();
		silent normal oreturn 0;
		silent normal kkO
	
	" Actual program 
		" #include <conio.h>
		" #include <stdio.h>
		" #include <stdlib.h>
		"
		"
		" int main () {
		" 	system("cls");
		"
		"
		"
		" 	getch();
		" 	return 0;
		" }
