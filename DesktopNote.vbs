Set WshShell = CreateObject("WScript.Shell")

WshShell.Run "powershell.exe -NoProfile -ExecutionPolicy Bypass -WindowStyle Hidden -File ""C:\Users\scyla\Desktop\Scripts\DesktopNote.ps1""", 0, False