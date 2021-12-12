WScript.Sleep 2000
Set objShell = WScript.CreateObject("WScript.Shell")
objShell.Run "cmd.exe /c cd C:/ProgramData & md UAC & md UAC\Report & md  UAC\Service\Logs", 0, True
