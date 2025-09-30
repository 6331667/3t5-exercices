param (
    [Parameter(Mandatory)]
    [string[]] $Name
)

for ($i = 0; $i -lt $Name.Count; $i++) {
    Get-LocalUser -Name $Name[$i] | Out-Null
    if ($?) {
        Write-Host ("L'utilisateur {0} existe" -f ("$Name"))
    }
    else {
        Write-Host ("L'utilisateur {0} n'existe pas" -f ("$Name"))
    }
}

