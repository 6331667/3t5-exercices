function Start-Notepad {
    param (
        [ValidateScript({Test-Path $_})]
        [string]$Chemin
    )
    if ($null -eq $Chemin) {
        notepad.exe
    }
    else {
        notepad.exe $Chemin
    }

    return Get-Process -Name Notepad
    
}