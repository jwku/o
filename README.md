Method = function tied to an object/class. Called like obj.method(). It usually operates on the object’s data (this/self).

Function = standalone block of code. Called like definedFx() or myFunction(). Doesn’t require an object.

Think: methods belong to objects, functions are independent.

[Built-in Variable: https://www.autohotkey.com/docs/v2/Variables.htm#BuiltIn](https://www.autohotkey.com/docs/v2/Variables.htm#BuiltIn)
```
for n, ctrl in WinGetControls("A") {        ; "A" = active window
    Result := MsgBox(ctrl,, 4)               ; option 4 prompts user
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
ClassNNs := WinGetControls([WinTitle, WinText, ExcludeTitle, ExcludeText])
```
```ahk
```
```ahk
;^c::  ; Ctrl+C hotkey
^g::  ; Ctrl+C hotkey
{
    Send("^c")
    Sleep 300
    Send("!m")
    Sleep 400
    Send("!+o")
    Sleep 2200
    Send("^v")
}
```
```ahk
row 1 within a fx(): 
    global g_bCopy, g_adjMinutes, g_adjText
    global g_Paths, g_Menu, FavoritesFile, g_AlwaysShowMenu, defaultString
```

```ahk
ComCall	Calls a native COM interface method by index.
DllCall	Calls a function inside a DLL, such as a standard Windows API function.
...
Exit	Exits the current thread.
ExitApp	Terminates the script.
...
GuiCtrlFromHwnd	Retrieves the GuiControl object of a GUI control associated with the specified window handle.
GuiFromHwnd	Retrieves the Gui object of a GUI window associated with the specified window handle.
```

```ahk
ControlChooseIndex	Sets the selection in a ListBox, ComboBox or Tab control to be the Nth item.
ControlChooseString	Sets the selection in a ListBox or ComboBox to be the first entry whose leading part matches the specified string.
ControlClick	Sends a mouse button or mouse wheel event to a control.
ControlDeleteItem	Deletes the specified entry number from a ListBox or ComboBox.
ControlFindItem	Returns the entry number of a ListBox or ComboBox that is a complete match for the specified string.
ControlFocus	Sets input focus to a given control on a window.
ControlGetChecked	Returns a non-zero value if the checkbox or radio button is checked.
ControlGetChoice	Returns the name of the currently selected entry in a ListBox or ComboBox.
ControlGetClassNN	Returns the ClassNN (class name and sequence number) of the specified control.
ControlGetEnabled	Returns a non-zero value if the specified control is enabled.
ControlGetFocus	Retrieves which control of the target window has keyboard focus, if any.
ControlGetHwnd	Returns the unique ID number of the specified control.
ControlGetIndex	Returns the index of the currently selected entry or tab in a ListBox, ComboBox or Tab control.
ControlGetItems	Returns an array of items/rows from a ListBox, ComboBox, or DropDownList.
ControlGetPos	Retrieves the position and size of a control.
ControlGetStyle
ControlGetExStyle	Returns an integer representing the style or extended style of the specified control.
ControlGetText	Retrieves text from a control.
ControlGetVisible	Returns a non-zero value if the specified control is visible.
ControlHide	Hides the specified control.
ControlHideDropDown	Hides the drop-down list of a ComboBox control.
ControlMove	Moves or resizes a control.
ControlSend
ControlSendText	Sends simulated keystrokes or text to a window or control.
ControlSetChecked	Turns on (checks) or turns off (unchecks) a checkbox or radio button.
ControlSetEnabled	Enables or disables the specified control.
ControlSetStyle
ControlSetExStyle	Changes the style or extended style of the specified control, respectively.
ControlSetText	Changes the text of a control.
ControlShow	Shows the specified control if it was previously hidden.
ControlShowDropDown	Shows the drop-down list of a ComboBox control.
```
```ahk
GetKeyName	Retrieves the name/text of a key.
GetKeyVK	Retrieves the virtual key code of a key.
GetKeySC	Retrieves the scan code of a key.
```
```ahk
target := 42
second := "target"
MsgBox  second   ; Normal (single) variable reference => target
MsgBox %second%  ; Double-deref => 42
```
Pseudo-arrays; 
A pseudo-array is actually just a bunch of discrete variables, but with a naming pattern which allows them to be used like elements of an array. For example:
```ahk
MyArray1 := "A"
MyArray2 := "B"
MyArray3 := "C"
Loop 3
    MsgBox MyArray%A_Index%  ; Shows A, then B, then C.
```
