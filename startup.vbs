Set sh = CreateObject("WScript.Shell")

' kill old instances and wait for them to finish
sh.Run "taskkill /F /IM komorebi.exe", 0, True
sh.Run "taskkill /F /IM whkd.exe", 0, True

' start komorebi and whkd first
sh.Run "komorebic start --whkd", 0, False
WScript.Sleep 1000

' start wt so komorebi can tile it (visible on purpose)
sh.Run "wt", 1, False

' other apps
sh.Run "yasbc start", 0, False
sh.Run """C:\Program Files\OpenRGB\OpenRGB.exe"" --startminimized", 0, False