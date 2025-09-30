param (
    [Parameter(Mandatory)]
    [string[]] $Name
)

try {
    for ($i = 0; $i -lt $Name.Count; $i++) {
        Get-LocalUser -Name $Name[$i] -ErrorAction SilentlyContinue | Out-Null
        if ($?) {
            Write-Host ("L'utilisateur {0} existe" -f ($Name[$i]))
        }
        else {
            Write-Host ("L'utilisateur {0} n'existe pas" -f ($Name[$i]))
        }
}
}
catch {
    <#Do this if a terminating exception happens#>
}

