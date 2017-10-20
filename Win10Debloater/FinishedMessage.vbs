x=msgbox("You must restart your computer to finish the process. Restart in 5 minutes?" ,4, "Question:")
If x = vbNo Then Wscript.Quit(0)
If x = VbYes Then
Set WshShell = CreateObject("WScript.Shell")
X = WshShell.run("shutdown.exe -r -t 500")
End If