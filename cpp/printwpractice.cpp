#include <ncurses.h> //ncurses.h includes stdio.h
#include <string.h>

int main()
{
char mesg[] = "Just a string";  //message to be papeared on the screen
int row, col;                   // to store the number of row and the number of columns of the screen

initscr();                      //start curse mode
getmaxyx(stdscr, row, col);     // get number of rows and columns
mvprintw(row/2,(col-strlen(mesg))/2,"%s",mesg); //print msg at center of screen

mvprintw(row-2,0,"This screen has %d rows and %d columns\n", row,col);
refresh();
getch();
endwin();

return 0;
}

