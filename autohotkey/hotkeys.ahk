SetCapsLockState, AlwaysOff

; Open Browser of Choice
^!+b::
    Run "Brave"
    Return

^!b::
    Run, "Brave" --incognito
    Return

; Open Explorer to home directory
^!e::
    Run Explorer "%HOMEPATH%"
    Return

; Open cmd
^!Enter::
    Run cmd.exe /k cd %HOMEPATH%
    Return
^!T::
    Run cmd.exe /k cd %HOMEPATH%
    Return

; Open Powershell Terminal to home directory
^!+Enter::
    Run Powershell -noexit -command "cd %HOMEPATH%"
    Return

; Close Current Window
^BS::
    ; Send !{F4} ; Does not work with terminal windows
    WinClose, A
    Return

; Restore window
CapsLock & j::
    WinRestore, A
    Return
CapsLock & Down::
    WinRestore, A
    Return

; Maximize window
CapsLock & k::
    WinMaximize, A
    Return
CapsLock & Space::
    WinMaximize, A
    Return
CapsLock & Up::
    WinMaximize, A
    Return

; Move window left or right
CapsLock & Left::
    Send {LWin down}{Left}{LWin up}{Esc}
    SetCapsLockState, AlwaysOff
    Return

CapsLock & h::
    Send {LWin down}{Left}{LWin up}{Esc}
    SetCapsLockState, AlwaysOff
    Return

CapsLock & Right::
    Send {LWin down}{Right}{LWin up}{Esc}
    SetCapsLockState, AlwaysOff
    Return

CapsLock & l::
    Send {LWin down}{Right}{LWin up}{Esc}
    SetCapsLockState, AlwaysOff
    Return