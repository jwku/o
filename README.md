# o

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
