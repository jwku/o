https://www.autohotkey.com/docs/v2/lib/_HotIf.htm 

; A window group can be used to make a hotkey or hotstring execute for a group of windows. For example:

GroupAdd "MyGroup", "ahk_class Notepad"
GroupAdd "MyGroup", "ahk_class WordPadClass"

#HotIf WinActive("ahk_group MyGroup")
#z::MsgBox "You pressed Win+Z in either Notepad or WordPad."
