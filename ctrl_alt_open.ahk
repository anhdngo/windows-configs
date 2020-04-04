; Ctrl+Alt+B - Open Browser of Choice
^!b::
    ; To use Firefox, comment out the Chrome line, To use Chrome, comment out the Firefox line
    ; Run "Firefox"
    Run "Chrome"
    Return

; Ctrl+Alt+E - Open Explorer to home directory
^!e::
    Run Explorer "%HOMEPATH%"
    Return

; Ctrl+Alt+Enter - Open cmd
^!Enter::
    Run cmd
    Return

; Ctrl+Alt+Shift+Enter - Open Powershell Terminal to home directory
^!+Enter::
    Run Powershell -noexit -command "cd %HOMEPATH%"
    Return

; Ctrl+Alt+T - Open Ubuntu Subsystem Terminal
^!t::
    Run Ubuntu
    Return

; Ctrl+Alt+Shift+T - Open Hyper Terminal
^!+t::
    ; Run Hyper
    Run C:\Users\ango\AppData\Local\hyper\Hyper.exe 
    Return

; Ctrl+Backspace - Close Current Window
^BS::
    ; Send !{F4} ; Does not work with terminal windows
    WinClose A
