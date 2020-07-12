; Open Browser of Choice
^!b::
    Run "Chrome"
    Return

; Open Explorer to home directory
^!e::
    Run Explorer "%HOMEPATH%"
    Return

; Open cmd
^!Enter::
    Run cmd
    Return

; Open Powershell Terminal to home directory
^!+Enter::
    Run Powershell -noexit -command "cd %HOMEPATH%"
    Return

; Open Windows Terminal
^!+t::
    Run wt.exe
    Return

; Open Hyper Terminal
^!t::
    ; Run Hyper
    Run C:\Users\ango\AppData\Local\hyper\Hyper.exe 
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

; Maximize window
CapsLock & k::
    WinMaximize, A
    Return

; Move window left or right
CapsLock & h::
    Send {LWin down}{Left}{LWin up}{Esc}
    SetCapsLockState, AlwaysOff
    Return

CapsLock & l::
    Send {LWin down}{Right}{LWin up}{Esc}
    SetCapsLockState, AlwaysOff
    Return

; Open Outlook
^!m::
    Run, Outlook
    Return

; Open Teams
^!s::
    Run, "C:\Users\ango\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Microsoft Teams"
    Return
