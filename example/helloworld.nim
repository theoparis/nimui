# a hello world example
# reference: http://www.tldp.org/HOWTO/NCURSES-Programming-HOWTO/helloworld.html

import ../src/nimui/ncurses
import strformat

initscr()
printw("hello world")
refresh()
getch()
endwin()
