```ahk
calendar's
yearAndWeek := FormatTime( _ , "YWeek") <<>> yearAndWeek := FormatTime( _ , _ )
nthWeek := SubStr(yearAndWeek, 5 , _ )
lines := StrSplit(content, "`n", "`r") <<>> lines := StrSplit(content, "`n", _ ) <<>> lines := StrSplit(content, _ , _ )
SetTimer(FocusAgain, -500) <<>> SetTimer( _ , _ , _ )
keyto's
SplitPath TargetFile, , , &ext
meh; n := match.pos + strlen(str)
StrReplace(oFilter.Text,"*",".*") <<>> counter := StrReplace(counter, "`r`n")  ; (replace &/) remove CRLF  
array PROPERTY; ["A", "B", "C"].Length
array method
counter := Trim(counter) <<>> MyGuiVisible := Trim(content)
```
Method = function tied to an object/class. Called like obj.method(). It usually operates on the object’s data (this/self).

Function = standalone block of code. Called like definedFx() or myFunction(). Doesn’t require an object.

Think: methods belong to objects, functions are independent.

```ahk
^g::  ; Ctrl+C hotkey
{
    Send("^c")
    Sleep 200
    Send("!m")
    Sleep 500
    Send("!+o")
    Sleep 4000
    Send("^v")
}
```
