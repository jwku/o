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



