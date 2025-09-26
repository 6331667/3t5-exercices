function X ([int]$x) {
    $xx = $x + 80
    return $xx
}
function Y ([int]$y) {
    $yy = X -x ($y * 3)
    return $yy
}

$a = X -x 10
$b = Y -y 17
$c = $b - $a + 1
Write-Host "La réponse est $c"

<#
    Trace du code

    Ligne           Effet                       Pile d'appel
    =====           =====                       ============

    $a = X -x 10    Appel X avec $x=10;         Fonction X
                    additione 80 et $x;         Script
                    retourne 90;
                    $a = 90

    $b = Y -y 17    Appel Y avec $y=17;         Fonction Y
                    Appel X avec $x = $Y*3;     Script
                    retourne 131;
                    $b = 131

    $c = $b-$a +1   $a:90; $b:131; $c:42        script

    Write-Host".."  Écrit "La reponse et 42"    script
#>