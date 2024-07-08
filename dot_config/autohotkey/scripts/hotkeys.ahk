#SingleInstance

; Run "wt.exe" ;, , , &wt_pid
; ; WinWait "ahk_pid " wt_pid
; terminal_id := WinWait("Terminal")
; WinActivate terminal_id
; WinMove 0, 0, A_ScreenWidth / 4, A_ScreenHeight / 2

; ; WinMinimize "A"

#t:: {
    if WinActive("ahk_exe WindowsTerminal.exe")
        WinMinimize("ahk_exe WindowsTerminal.exe")
    else if not WinExist("ahk_exe WindowsTerminal.exe")
        Run "wt.exe"
    else WinActivate("ahk_exe WindowsTerminal.exe")
}