Set objArgs = WScript.Arguments
password = objArgs(0)

Set objShell = CreateObject("WScript.Shell")
baseDir = CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName)
qpdfExe = baseDir & "\Program\bin\qpdf.exe"
inputDir = baseDir & "\InputPDF"
outputDir = baseDir & "\OutputPDF"

Set objFSO = CreateObject("Scripting.FileSystemObject")
If Not objFSO.FolderExists(outputDir) Then
    objFSO.CreateFolder(outputDir)
End If

Set inputFolder = objFSO.GetFolder(inputDir)
For Each file In inputFolder.Files
    If LCase(objFSO.GetExtensionName(file)) = "pdf" Then
        outputFile = outputDir & "\" & objFSO.GetBaseName(file) & "-protected.pdf"
        cmd = """" & qpdfExe & """ --encrypt """ & password & """ """" 256 --allow-insecure -- """ & file.Path & """ """ & outputFile & """"
        objShell.Run cmd, 0, True  ' Run the command silently
    End If
Next

MsgBox "Encryption complete! Files saved in OutputPDF folder.", 64, "Done"
