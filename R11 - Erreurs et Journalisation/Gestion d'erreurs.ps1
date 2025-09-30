param (
    [Parameter(Mandatory)]
    [ValidateCount(1,6)]
    [string[]] $Name
)



for ($i = 0; $i -lt $Name.Count; $i++) {
    Get-LocalUser -Name $Name[$i] -ErrorAction SilentlyContinue | Out-Null
    if ($?) {
        Write-Host ("L'utilisateur {0} existe" -f ("$Name"))
    }
    else {
        Write-Host ("L'utilisateur {0} n'existe pas" -f ("$Name"))
    }
}

