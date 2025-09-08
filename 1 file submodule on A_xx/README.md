```ahk
Special Characters
Variable	Description
A_Space	Contains a single space character.
A_Tab	Contains a single tab character.
Script Properties
Variable	Description
A_Args	Contains an array of command line parameters. For details, see Passing Command Line Parameters to a Script.
A_WorkingDir	
Can be used to get or set the script's current working directory, which is where files will be accessed by default. The final backslash is not included unless it is the root directory. Two examples: C:\ and C:\My Documents.

SetWorkingDir can also be used to change the working directory.

The script's working directory defaults to A_ScriptDir, regardless of how the script was launched.

A_InitialWorkingDir	The script's initial working directory, which is determined by how it was launched. For example, if it was run via shortcut -- such as on the Start Menu -- its initial working directory is determined by the "Start in" field within the shortcut's properties.
A_ScriptDir	
The full path of the directory where the current script is located. The final backslash is omitted (even for root directories).

If the script text is read from stdin rather than from file, this variable contains the initial working directory.

A_ScriptName	
Can be used to get or set the default title for MsgBox, InputBox, FileSelect, DirSelect and Gui. If not set by the script, it defaults to the file name of the current script, without its path, e.g. MyScript.ahk.

If the script text is read from stdin rather than from file, this variable contains an asterisk (*).

If the script is compiled or embedded, this is the name of the current executable file.

A_ScriptFullPath	
The full path of the current script, e.g. C:\Scripts\My Script.ahk

If the script text is read from stdin rather than from file, this variable contains an asterisk (*).

If the script is compiled or embedded, this is the full path of the current executable file.

A_ScriptHwnd	The unique ID (HWND/handle) of the script's hidden main window.
A_LineNumber	
The number of the currently executing line within the script (or one of its #Include files). This line number will match the one shown by ListLines; it can be useful for error reporting such as this example: MsgBox "Could not write to log file (line number " A_LineNumber ")".

Since a compiled script has merged all its #Include files into one big script, its line numbering may be different than when it is run in non-compiled mode.

A_LineFile	
The full path and name of the file to which A_LineNumber belongs. If the script was loaded from an external file, this is the same as A_ScriptFullPath unless the line belongs to one of the script's #Include files.

If the script was compiled based on a .bin file, this is the full path and name of the current executable file, the same as A_ScriptFullPath.

If the script is embedded, A_LineFile contains an asterisk (*) followed by the resource name; e.g. *#1

A_ThisFunc	The name of the user-defined function that is currently executing (blank if none); for example: MyFunction. See also: Name property (Func)
A_AhkVersion	Contains the version of AutoHotkey that is running the script, such as 1.0.22. In the case of a compiled script, the version that was originally used to compile it is reported. The formatting of the version number allows a script to check whether A_AhkVersion is greater than some minimum version number with > or >= as in this example: if (A_AhkVersion >= "1.0.25.07"). See also: #Requires and VerCompare
A_AhkPath	
For non-compiled or embedded scripts: The full path and name of the EXE file that is actually running the current script. For example: C:\Program Files\AutoHotkey\AutoHotkey.exe

For compiled scripts based on a .bin file, the value is determined by reading the installation directory from the registry and appending "\AutoHotkey.exe". If AutoHotkey is not installed, the value is blank. The example below is equivalent:

InstallDir := RegRead("HKLM\SOFTWARE\AutoHotkey", "InstallDir", "")
AhkPath := InstallDir ? InstallDir "\AutoHotkey.exe" : ""
For compiled scripts based on an .exe file, A_AhkPath contains the full path of the compiled script. This can be used in combination with /script to execute external scripts. To instead locate the installed copy of AutoHotkey, read the registry as shown above.

A_IsCompiled	Contains 1 if the script is running as a compiled EXE and 0 (which is considered false) if it is not.
Date and Time
Variable	Description
A_YYYY	
Current 4-digit year (e.g. 2004). Synonymous with A_Year.

Note: To retrieve a formatted time or date appropriate for your locale and language, use FormatTime() (time and long date) or FormatTime(, "LongDate") (retrieves long-format date).

A_MM	Current 2-digit month (01-12). Synonymous with A_Mon.
A_DD	Current 2-digit day of the month (01-31). Synonymous with A_MDay.
A_MMMM	Current month's full name in the current user's language, e.g. July
A_MMM	Current month's abbreviation in the current user's language, e.g. Jul
A_DDDD	Current day of the week's full name in the current user's language, e.g. Sunday
A_DDD	Current day of the week's abbreviation in the current user's language, e.g. Sun
A_WDay	Current 1-digit day of the week (1-7). 1 is Sunday in all locales.
A_YDay	Current day of the year (1-366). The value is not zero-padded, e.g. 9 is retrieved, not 009. To retrieve a zero-padded value, use the following: FormatTime(, "YDay0").
A_YWeek	Current year and week number (e.g. 200453) according to ISO 8601. To separate the year from the week, use Year := SubStr(A_YWeek, 1, 4) and Week := SubStr(A_YWeek, -2). Precise definition of A_YWeek: If the week containing January 1st has four or more days in the new year, it is considered week 1. Otherwise, it is the last week of the previous year, and the next week is week 1.
A_Hour	Current 2-digit hour (00-23) in 24-hour time (for example, 17 is 5pm). To retrieve 12-hour time as well as an AM/PM indicator, follow this example: FormatTime(, "h:mm:ss tt")
A_Min	
Current 2-digit minute (00-59).

A_Sec	Current 2-digit second (00-59).
A_MSec	Current 3-digit millisecond (000-999). To remove the leading zeros, follow this example: Milliseconds := A_MSec + 0.
A_Now	
The current local time in YYYYMMDDHH24MISS format.

Note: Date and time math can be performed with DateAdd and DateDiff. Also, FormatTime can format the date and/or time according to your locale or preferences.

A_NowUTC	The current Coordinated Universal Time (UTC) in YYYYMMDDHH24MISS format. UTC is essentially the same as Greenwich Mean Time (GMT).
A_TickCount	
The number of milliseconds that have elapsed since the system was started, up to 49.7 days. By storing A_TickCount in a variable, elapsed time can later be measured by subtracting that variable from the latest A_TickCount value. For example:

StartTime := A_TickCount
Sleep 1000
ElapsedTime := A_TickCount - StartTime
MsgBox ElapsedTime " milliseconds have elapsed."
If you need more precision than A_TickCount's 10 ms, use QueryPerformanceCounter().

Script Settings
Variable	Description
...
A_TrayMenu	
Returns a Menu object which can be used to modify or display the tray menu.

A_AllowMainWindow	
Can be used to get or set whether the script's main window is allowed to be opened via the tray icon. Possible values are 0 (forbidden) and 1 (allowed).

If the script is neither compiled nor embedded, this variable defaults to 1, otherwise this variable defaults to 0 but can be overridden by assigning it a value. Setting it to 1 also restores the "Open" menu item to the tray menu and enables the items in the main window's View menu such as "Lines most recently executed", which allows viewing of the script's source code and other info.

The following functions are always able to show the main window and select the corresponding View options when they are encountered in the script at runtime: ListLines, ListVars, ListHotkeys, and KeyHistory.

Setting it to 1 does not prevent the main window from being shown by WinShow or inspected by ControlGetText or similar methods, but it does prevent the script's source code and other info from being exposed via the main window, except when one of the functions listed above is called by the script.

A_IconHidden	Can be used to get or set whether to hide the tray icon. Possible values are 0 (visible) and 1 (hidden). For details, see #NoTrayIcon.
...
User Idle Time
Variable	Description
A_TimeIdle	
The number of milliseconds that have elapsed since the system last received keyboard, mouse, or other input. This is useful for determining whether the user is away. Physical input from the user as well as artificial input generated by any program or script (such as the Send or MouseMove functions) will reset this value back to zero. Since this value tends to increase by increments of 10, do not check whether it is equal to another value. Instead, check whether it is greater or less than another value. For example:

if A_TimeIdle > 600000
    MsgBox "Last activity was 10 minutes ago"
A_TimeIdlePhysical	Similar to above but ignores artificial keystrokes and/or mouse clicks whenever the corresponding hook (keyboard or mouse) is installed; that is, it responds only to physical events. (This prevents simulated keystrokes and mouse clicks from falsely indicating that a user is present.) If neither hook is installed, this variable is equivalent to A_TimeIdle. If only one hook is installed, only its type of physical input affects A_TimeIdlePhysical (the other/non-installed hook's input, both physical and artificial, has no effect).
A_TimeIdleKeyboard	If the keyboard hook is installed, this is the number of milliseconds that have elapsed since the system last received physical keyboard input. Otherwise, this variable is equivalent to A_TimeIdle.
A_TimeIdleMouse	If the mouse hook is installed, this is the number of milliseconds that have elapsed since the system last received physical mouse input. Otherwise, this variable is equivalent to A_TimeIdle.
Hotkeys, Hotstrings, and Custom Menu Items
Variable	Description
A_ThisHotkey	
The most recently executed hotkey or non-auto-replace hotstring (blank if none), e.g. #z. This value will change if the current thread is interrupted by another hotkey or hotstring, so it is generally better to use the parameter ThisHotkey when available.

When a hotkey is first created -- either by the Hotkey function or the double-colon syntax in the script -- its key name and the ordering of its modifier symbols becomes the permanent name of that hotkey, shared by all variants of the hotkey.

When a hotstring is first created -- either by the Hotstring function or a double-colon label in the script -- its trigger string and sequence of option characters becomes the permanent name of that hotstring.

A_PriorHotkey	Same as above except for the previous hotkey. It will be blank if none.
A_PriorKey	The name of the last key which was pressed prior to the most recent key-press or key-release, or blank if no applicable key-press can be found in the key history. All input generated by AutoHotkey scripts is excluded. For this variable to be of use, the keyboard or mouse hook must be installed and key history must be enabled.
A_TimeSinceThisHotkey	The number of milliseconds that have elapsed since A_ThisHotkey was pressed. It will be blank whenever A_ThisHotkey is blank.
A_TimeSincePriorHotkey	The number of milliseconds that have elapsed since A_PriorHotkey was pressed. It will be blank whenever A_PriorHotkey is blank.
A_EndChar	The ending character that was pressed by the user to trigger the most recent non-auto-replace hotstring. If no ending character was required (due to the * option), this variable will be blank.
A_MaxHotkeysPerInterval	Can be used to get or set the maximum number of hotkeys that can be pressed within the interval defined by A_HotkeyInterval without triggering a warning dialog. For details, see A_MaxHotkeysPerInterval.
A_HotkeyInterval	Can be used to get or set the length of the interval used by A_MaxHotkeysPerInterval, in milliseconds.
A_HotkeyModifierTimeout	Can be used to get or set the timeout affecting the behavior of Send with hotkey modifiers Ctrl, Alt, Win, and Shift. For details, see A_HotkeyModifierTimeout.
Operating System and User Info
Variable	Description
A_ComSpec	
Contains the same string as the ComSpec environment variable, which is usually the full path to the command prompt executable (cmd.exe). Often used with Run/RunWait. For example:

C:\Windows\system32\cmd.exe
A_Temp	
The full path and name of the folder designated to hold temporary files. It is retrieved from one of the following locations (in order): 1) the environment variables TMP, TEMP, or USERPROFILE; 2) the Windows directory. For example:

C:\Users\<UserName>\AppData\Local\Temp
A_OSVersion	
The version number of the operating system, in the format "major.minor.build". For example, Windows 7 SP1 is 6.1.7601.

Applying compatibility settings in the AutoHotkey executable or compiled script's properties causes the OS to report a different version number, which is reflected by A_OSVersion.

A_Is64bitOS	Contains 1 (true) if the OS is 64-bit or 0 (false) if it is 32-bit.
A_PtrSize	Contains the size of a pointer, in bytes. This is either 4 (32-bit) or 8 (64-bit), depending on what type of executable (EXE) is running the script.
A_Language	The system's default language, which is one of these 4-digit codes.
A_ComputerName	The name of the computer as seen on the network.
A_UserName	The logon name of the user who launched this script.
A_WinDir	The Windows directory. For example: C:\Windows
A_ProgramFiles	
The Program Files directory (e.g. C:\Program Files or C:\Program Files (x86)). This is usually the same as the ProgramFiles environment variable.

On 64-bit systems (and not 32-bit systems), the following applies:

If the executable (EXE) that is running the script is 32-bit, A_ProgramFiles returns the path of the "Program Files (x86)" directory.
For 32-bit processes, the ProgramW6432 environment variable contains the path of the 64-bit Program Files directory. On Windows 7 and later, it is also set for 64-bit processes.
The ProgramFiles(x86) environment variable contains the path of the 32-bit Program Files directory.
A_AppData	
The full path and name of the folder containing the current user's application-specific data. For example:

C:\Users\<UserName>\AppData\Roaming
A_AppDataCommon	
The full path and name of the folder containing the all-users application-specific data. For example:

C:\ProgramData
A_Desktop	
The full path and name of the folder containing the current user's desktop files. For example:

C:\Users\<UserName>\Desktop
A_DesktopCommon	
The full path and name of the folder containing the all-users desktop files. For example:

C:\Users\Public\Desktop
A_StartMenu	
The full path and name of the current user's Start Menu folder. For example:

C:\Users\<UserName>\AppData\Roaming\Microsoft\Windows\Start Menu
A_StartMenuCommon	
The full path and name of the all-users Start Menu folder. For example:

C:\ProgramData\Microsoft\Windows\Start Menu
A_Programs	
The full path and name of the Programs folder in the current user's Start Menu. For example:

C:\Users\<UserName>\AppData\Roaming\Microsoft\Windows\Start Menu\Programs
A_ProgramsCommon	
The full path and name of the Programs folder in the all-users Start Menu. For example:

C:\ProgramData\Microsoft\Windows\Start Menu\Programs
A_Startup	
The full path and name of the Startup folder in the current user's Start Menu. For example:

C:\Users\<UserName>\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
A_StartupCommon	
The full path and name of the Startup folder in the all-users Start Menu. For example:

C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup
A_MyDocuments	
The full path and name of the current user's "My Documents" folder. Unlike most of the similar variables, if the folder is the root of a drive, the final backslash is not included (e.g. it would contain M: rather than M:\). For example:

C:\Users\<UserName>\Documents
A_IsAdmin	
Contains 1 if the current user has admin rights, otherwise 0.

To have the script restart itself as admin (or show a prompt to the user requesting admin), use Run *RunAs. However, note that running the script as admin causes all programs launched by the script to also run as admin. For a possible alternative, see the FAQ.

A_ScreenWidth
A_ScreenHeight

The width and height of the primary monitor, in pixels (e.g. 1024 and 768).

To discover the dimensions of other monitors in a multi-monitor system, use SysGet.

To instead discover the width and height of the entire desktop (even if it spans multiple monitors), use the following example:

VirtualWidth := SysGet(78)
VirtualHeight := SysGet(79)
In addition, use SysGet to discover the work area of a monitor, which can be smaller than the monitor's total area because the taskbar and other registered desktop toolbars are excluded.

A_ScreenDPI	
Number of pixels per logical inch along the screen width. This is typically 96 if the display scale is set to 100 %. In a system with multiple displays, this value corresponds to the primary display at the time the program started.

See also DPI Scaling and the GUI's -DPIScale option.

Misc.
Variable	Description
A_Clipboard	Can be used to get or set the contents of the OS's clipboard. For details, see A_Clipboard.
A_Cursor	
The type of mouse cursor currently being displayed. It will be one of the following words: AppStarting, Arrow, Cross, Help, IBeam, Icon, No, Size, SizeAll, SizeNESW, SizeNS, SizeNWSE, SizeWE, UpArrow, Wait, Unknown. The acronyms used with the size-type cursors are compass directions, e.g. NESW = NorthEast+SouthWest. The hand-shaped cursors (pointing and grabbing) are classified as Unknown.

A_EventInfo	
Contains additional information about the following events:

Mouse wheel hotkeys (WheelDown/Up/Left/Right)
OnMessage
Regular Expression Callouts
Note: Unlike variables such as A_ThisHotkey, each thread retains its own value for A_EventInfo. Therefore, if a thread is interrupted by another, upon being resumed it will still see its original/correct values in these variables.

A_EventInfo can also be set by the script, but can only accept unsigned integers within the range available to pointers (32-bit or 64-bit depending on the version of AutoHotkey).

A_LastError	
This is usually the result from the OS's GetLastError() function after the script calls certain functions, including DllCall, Run/RunWait, File/Ini/Reg functions (where documented) and possibly others. A_LastError is a number between 0 and 4294967295 (always formatted as decimal, not hexadecimal). Zero (0) means success, but any other number means the call failed. Each number corresponds to a specific error condition. See OSError for how to get the localized error description text, or search www.microsoft.com for "system error codes" to get a list. A_LastError is a per-thread setting; that is, interruptions by other threads cannot change it.

Assigning a value to A_LastError also causes the OS's SetLastError() function to be called.

True
False	
Contain 1 and 0. They can be used to make a script more readable. For details, see Boolean Values.

These are actually keywords, not variables.

Loop
Variable	Description
A_Index	Can be used to get or set the number of the current loop iteration (a 64-bit integer). It contains 1 the first time the loop's body is executed. For the second time, it contains 2; and so on. If an inner loop is enclosed by an outer loop, the inner loop takes precedence. A_Index works inside all types of loops, but contains 0 outside of a loop. For counted loops such as Loop, changing A_Index affects the number of iterations that will be performed.
A_LoopFileName, etc.	This and other related variables are valid only inside a file loop.
A_LoopRegName, etc.	This and other related variables are valid only inside a registry loop.
A_LoopReadLine	See file-reading loop.
A_LoopField	See parsing loop.
```
