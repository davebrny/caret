/*
[script info]
version     = 0.1.1
description = caret commands
ahk version = 1.1.26.01
author      = davebrny
source      = https://github.com/davebrny/caret
*/


caret(command) {
    loop, parse, command, >, % a_space
        {
        this_command := a_loopField
        if this_command contains % a_space
            this_command := strReplace(this_command, a_space, "_")

        if isLabel("c_" this_command)
            goSub, c_%this_command%
        else if isFunc("c_" this_command)
            c_%this_command%()
        }
}


; █▀▄▀█ █▀▀█ ▀█ █▀ █▀▀
; █ ▀ █ █  █  █▄█  █▀▀
; ▀   ▀ ▀▀▀▀   ▀   ▀▀▀


c_move_up:
send {up}
return

c_move_down:
send {down}
return

c_move_left:
send {left}
return

c_move_right:
send {right}
return

c_move_to_start_of_word:
c_move_to_previous_word:
send ^{left}
return

c_move_to_end_of_word:
c_move_to_next_word:
send ^{right}
return

c_move_to_start_of_line:
send {home}
return

c_move_to_end_of_line:
send {end}
return

c_move_up_page:
c_move_page_up:
send {pgUp}
return

c_move_down_page:
c_move_page_down:
send {pgDn}
return

c_move_to_start_of_page:
send ^{home}
return

c_move_to_end_of_page:
send ^{end}
return


; █▀▀ █▀▀ █   █▀▀ █▀▀ ▀▀█▀▀
; ▀▀█ █▀▀ █   █▀▀ █     █
; ▀▀▀ ▀▀▀ ▀▀▀ ▀▀▀ ▀▀▀   ▀


c_select_up:
send +{up}
return

c_select_down:
send +{down}
return

c_select_left:
send +{left}
return

c_select_right:
send +{right}
return

c_select_word_backward:
send ^+{left}
return

c_select_word_forward:
send ^+{right}
return

c_select_to_start_of_line:
send +{home}
return

c_select_to_end_of_line:
send +{end}
return

c_select_up_page:
c_select_page_up:
send +{pgUp}
return

c_select_down_page:
c_select_page_down:
send +{pgDn}
return

c_select_to_start_of_page:
send ^+{home}
return

c_select_to_end_of_page:
send ^+{end}
return

c_reset_selection:
c_reset_selection_right:
send {right}
return

c_reset_selection_left:
send {left}
return


; █▀▀▄ █▀▀ █   █▀▀ ▀▀█▀▀ █▀▀
; █  █ █▀▀ █   █▀▀   █   █▀▀
; ▀▀▀  ▀▀▀ ▀▀▀ ▀▀▀   ▀   ▀▀▀


c_backspace:
c_delete_left:
send {backspace}
return

c_delete:
c_delete_right:
send {delete}
return

c_delete_word_backward:
send ^{backspace}
return

c_delete_word_forward:
send ^{delete}
return