# a hello world w/ colors example
# reference: http://www.tldp.org/HOWTO/NCURSES-Programming-HOWTO/helloworld.html

import ../src/nimui/ncurses

var NORMAL_PAIR = cshort(1)

initscr()
start_color()
# Define a color pair with green text and a black background
# See https://www.linuxjournal.com/content/programming-color-ncurses
init_pair(NORMAL_PAIR, COLOR_GREEN, COLOR_BLACK)
attron(COLOR_PAIR(NORMAL_PAIR));
printw("hello world")
refresh()
getch()
endwin()
