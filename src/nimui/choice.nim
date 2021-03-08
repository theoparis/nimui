import ../nimui/ncurses
import strformat


proc choose*[I: int](win: PWindow, choices: array[I, string]): string =
    var highlight: int = 0

    while true:
        for i in 0 ..< choices.len:
            if i == highlight:
                wattron(win, A_REVERSE)
            mvprintw((i+1).toU32(), 1, &" > {choices[i]}")
            wattroff(win, A_REVERSE)
        var choice = wgetch(win)
        if choice == KEY_UP:
            dec(highlight)
            if highlight == -1:
                highlight = 0
        elif choice == KEY_DOWN:
            inc(highlight)
            if highlight == choices.len:
                highlight = choices.len - 1
        elif choice == 10:
            return choices[highlight]


