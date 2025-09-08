```ahk
calendar's
yearAndWeek := FormatTime( _ , "YWeek") <<>> yearAndWeek := FormatTime( _ , _ )
nthWeek := SubStr(yearAndWeek, 5 , _ )
lines := StrSplit(content, "`n", "`r") <<>> lines := StrSplit(content, "`n", _ ) <<>> lines := StrSplit(content, _ , _ )
SetTimer(FocusAgain, -500) <<>> SetTimer( _ , _ , _ )
keyto's
SplitPath TargetFile, , , &ext
skip
```

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
