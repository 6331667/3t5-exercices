$hour = Get-Date -Format hh
$min = Get-Date -Format mm 


if ($min%2 -ne 0) {
    Write-Host ("Il est {0} heures et {1} minutes" -f $hour, $min)
    throw "Les minutes sont impaires!"
}

Write-Host ("Il est {0} heures et {1} minutes" -f $hour, $min)