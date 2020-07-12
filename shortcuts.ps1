$SourceFileLocation = "$($env:userprofile)\windows-configs\autohotkey\hotkeys.ahk"
$ShortcutLocation = "$($env:appdata)\Microsoft\Windows\Start Menu\Programs\Startup\hotkeys.ahk.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutLocation)
$Shortcut.TargetPath = $SourceFileLocation
$Shortcut.Save()