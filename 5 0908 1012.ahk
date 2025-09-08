UniqueID := WinExist(WinTitle, WinText, ExcludeTitle, ExcludeText)
https://www.autohotkey.com/docs/v2/lib/WinExist.htm 

WinActivateBottom [WinTitle, WinText, ExcludeTitle, ExcludeText]
https://www.autohotkey.com/docs/v2/lib/WinActivateBottom.htm 

WinClose [WinTitle, WinText, SecondsToWait, ExcludeTitle, ExcludeText]
https://www.autohotkey.com/docs/v2/lib/WinClose.htm 

; 5GUI:
close_working(*){
    windows := ["ahk_class Notepad++", "ahk_exe SciTE.exe"] ; "ahk_exe chrome.exe", "ahk_exe Code.exe",
    for window in windows {
        if WinExist(window) {
            WinActivate()
            WinClose()
        }
    }
}

```ahk
v2:
#HotIf WinExist("FastKeys 5.17 TRIAL - FastKeys.fdb")
    a::MsgBox "yes"
#HotIf
v1:
#IfWinExists FastKeys 5.17 TRIAL - FastKeys.fdb
    a::MsgBox, "yes"
#IfWinExists
; both good (above and below) for different, quite-evident reasons
#IfWinActive FastKeys 5.17 TRIAL - FastKeys.fdb
    a::MsgBox, "yes"
#IfWinActive
```
