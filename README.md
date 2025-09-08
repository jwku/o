Method = function tied to an object/class. Called like obj.method(). It usually operates on the object’s data (this/self).

Function = standalone block of code. Called like definedFx() or myFunction(). Doesn’t require an object.

Think: methods belong to objects, functions are independent.

[Built-in Variable: https://www.autohotkey.com/docs/v2/Variables.htm#BuiltIn](https://www.autohotkey.com/docs/v2/Variables.htm#BuiltIn)
```
for n, ctrl in WinGetControls("A") {        ; "A" = active window
    Result := MsgBox(ctrl, 4)               ; option 4 prompts user
    if (Result = "No")
        break
}
```
```ahk
calendar's
yearAndWeek := FormatTime( _ , "YWeek") <<>> yearAndWeek := FormatTime( _ , _ )
nthWeek := SubStr(yearAndWeek, 5 , _ )
lines := StrSplit(content, "`n", "`r") <<>> lines := StrSplit(content, "`n", _ ) <<>> lines := StrSplit(content, _ , _ )
SetTimer(FocusAgain, -500) <<>> SetTimer( _ , _ , _ )
keyto's
SplitPath TargetFile, , , &ext
n := match.pos + StrLen(str)
counter := Trim(counter) <<>> MyGuiVisible := Trim(content)
StrReplace(oFilter.Text,"*",".*") <<>> counter := StrReplace(counter, "`r`n")  ; (replace &/) remove CRLF  
array PROPERTY; ["A", "B", "C"].Length
array method
...
g.Hwnd ; <- simple
If WinActive("ahk_class CabinetWClass") <<>> #HotIf WinActive(g.Hwnd) ; WinActivate ≠ WinActive
WinActivate g_window_id <<>> WinActivateBottom g_window_id            ; WinActivate ≠ WinActive
```
5GUI's WinExist&WinActivate&WinClose example here instead [5 0908 1012.ahk](https://github.com/jwku/o/blob/main/5%200908%201012.ahk)
```ahk
; HWND is a handle to a window in Windows programming.
WinActivate	Activates the specified window.
WinActivateBottom	Same as WinActivate except that it activates the bottommost matching window rather than the topmost.
WinActive	Checks if the specified window is active and returns its unique ID (HWND).
WinExist	Checks if the specified window exists and returns the unique ID (HWND) of the first matching window.
WinClose	Closes the specified window.
---
; A window group can be used to make a hotkey or hotstring execute for a group of windows. For example:
GroupAdd "MyGroup", "ahk_class Notepad"
GroupAdd "MyGroup", "ahk_class WordPadClass"
#HotIf WinActive("ahk_group MyGroup")
#z::MsgBox "You pressed Win+Z in either Notepad or WordPad."
---
RegExMatch(filecontent, RegexPattern, &match, n)) { str:=match[] ... ... }
```
nextWeek := DateAdd(A_YYYY A_MM A_DD, + addVar + 7, "Days") ; [v2/DateAdd.htm](https://www.autohotkey.com/docs/v2/lib/DateAdd.htm) ; Result := DateAdd(DateTime, Time, TimeUnits)

[v2/KeyList.htm](https://www.autohotkey.com/docs/v2/KeyList.htm)

[v2/GuiControls.htm aka controls/UI objects aka GuiControl Object](https://www.autohotkey.com/docs/v2/lib/GuiControls.htm)

GuiControl Object <<>> class Gui.Control extends Object; Gui Object <<>> class Gui extends Object
```ahk
Remainder := Mod(Dividend, Divisor)
---
HWND := WinGetID([WinTitle, WinText, ExcludeTitle, ExcludeText])
ClassName := WinGetClass([WinTitle, WinText, ExcludeTitle, ExcludeText])
```
```ahk
```
```ahk
;^c::  ; Ctrl+C hotkey
^g::  ; Ctrl+C hotkey
{
    Send("^c")
    Sleep 400
    Send("!m")
    Sleep 500
    Send("!+o")
    Sleep 4000
    Send("^v")
}
```
```ahk
row 1 within a fx(): 
    global g_bCopy, g_adjMinutes, g_adjText
    global g_Paths, g_Menu, FavoritesFile, g_AlwaysShowMenu, defaultString
```
