```ahk
calendar's
yearAndWeek := FormatTime( _ , "YWeek") <<>> yearAndWeek := FormatTime( _ , _ )
nthWeek := SubStr(yearAndWeek, 5 , _ )
lines := StrSplit(content, "`n", "`r") <<>> lines := StrSplit(content, "`n", _ ) <<>> lines := StrSplit(content, _ , _ )
SetTimer(FocusAgain, -500) <<>> SetTimer( _ , _ , _ )
keyto's
SplitPath TargetFile, , , &ext
```

```ahk
^g::  ; Like Super Ctrl+C hotkey, due to 2x copy probs w/ [v2Lib](https://www.autohotkey.com/docs/v2/lib/)
{
    Send("^c")
    Sleep 200
    Send("!m")
    Sleep 4000
    Send("^+{~}")
    Sleep 4500
    Send("^v")
}
```
