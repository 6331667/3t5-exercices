function Start-Notepad {
    param (
        [ValidateScript({Test-Path $_})]
        [string]$Chemin
    )
    if ($null -eq $Chemin) {
        Start-Process Notepad.exe -PassThru | Get-Process
    }
    else {
        Start-Process Notepad.exe -ArgumentList $Chemin -PassThru | Get-Process
    }
}