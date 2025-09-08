Text := FileRead(Filename [, Options])

Options as `n (a linefeed character): Replaces any/all occurrences of carriage return & linefeed (`r`n) with linefeed (`n). However, this translation reduces performance and is usually not necessary. For example, text containing `r`n is already in the right format to be added to a Gui Edit control. The following parsing loop will work correctly regardless of whether each line ends in `r`n or just `n: Loop Parse, MyFileContents, "`n", "`r".

https://www.autohotkey.com/docs/v2/lib/FileRead.htm 

